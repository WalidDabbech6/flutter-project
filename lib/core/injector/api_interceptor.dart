import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/features/authentification/data/models/auth_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppInterceptors extends InterceptorsWrapper {
  Dio dio;
  AppInterceptors(this.dio);

  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    var prefs = await SharedPreferences.getInstance();
    var accessToken = prefs.getString(SharedPreferenceKeys.tokenKey);
    if (options.path != ApiEndpoints.loginApiEndpoint &&
        options.path != ApiEndpoints.resetPasswordApiEndpoint) {
      options.headers["Authorization"] = 'Bearer $accessToken';
    }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    final prefs = await SharedPreferences.getInstance();
    if (err.response?.statusCode == 401 || err.response?.statusCode == 403) {
      //save user credentials into secure storage
      const secureStorage = FlutterSecureStorage();
      var email = await secureStorage.read(
        key: SharedPreferenceKeys.usernameKey,
      );
      var password = await secureStorage.read(
        key: SharedPreferenceKeys.passwordKey,
      );

      try {
        var response = await Dio().post(
          ApiEndpoints.loginApiEndpoint,
          data: {
            'email': email,
            'password': password,
          },
        );

        await prefs.setString(
          SharedPreferenceKeys.tokenKey,
          response.data?.accessToken,
        );
        err.requestOptions.headers["Authorization"] =
            "Bearer ${response.data?.accessToken}";
        //create request with new access token
        final opts = Options(
          method: err.requestOptions.method,
          headers: err.requestOptions.headers,
        );
        final cloneReq = await dio.request(
          err.requestOptions.path,
          options: opts,
          data: err.requestOptions.data,
          queryParameters: err.requestOptions.queryParameters,
        );

        return handler.resolve(cloneReq);
      } catch (e) {
        prefs.clear();
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else {
          exit(0);
        }
      }
    }
  }
}
