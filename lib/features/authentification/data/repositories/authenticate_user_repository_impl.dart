import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/utility_functions.dart';
import 'package:marketplace_client_app/features/authentification/data/models/auth_response.dart';
import 'package:marketplace_client_app/features/authentification/domain/repositories/authenticate_user_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';

class AuthenticateUserRepositoryImpl implements AuthenticateUserRepository {
  ApiAdapter apiAdapter;
  AuthenticateUserRepositoryImpl({required this.apiAdapter});

  @override
  Future<void> authenticateUser(
    String email,
    String password,
    StreamController stream,
  ) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      stream.add(DataResponse.loading());
      try {
        var response = await apiAdapter.dio.post(
          ApiEndpoints.loginApiEndpoint,
          data: {
            'username': email,
            'password': password,
          },
        ).timeout(Duration(seconds: 3));
        var authResponse = AuthResponse.fromJson(response.data);
        final prefs = await SharedPreferences.getInstance();

        //save user credentials into secure storage
        const secureStorage = FlutterSecureStorage();
        await secureStorage.write(
          key: SharedPreferenceKeys.usernameKey,
          value: email,
        );
        await secureStorage.write(
          key: SharedPreferenceKeys.passwordKey,
          value: password,
        );

        //save auth response data into shared preferences
        await prefs.setString(
          SharedPreferenceKeys.userKey,
          jsonEncode(
            authResponse.user.toJson(),
          ),
        );
        await prefs.setString(
          SharedPreferenceKeys.tokenKey,
          authResponse.accessToken,
        );
        stream.add(
          DataResponse.completed(
            data: authResponse,
          ),
        );
      } catch (e) {
        stream.add(
          DataResponse.error(),
        );
      }
    } else {
      stream.add(
        DataResponse.offline(),
      );
    }
  }
}
