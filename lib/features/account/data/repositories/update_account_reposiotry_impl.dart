import 'dart:async';
import 'dart:convert';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/utility_functions.dart';
import 'package:marketplace_client_app/features/account/domain/repositories/update_account_repository.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateAccountRepositoryImpl implements UpdateAccountRepository {
  ApiAdapter apiAdapter;
  UpdateAccountRepositoryImpl({
    required this.apiAdapter,
  });

  @override
  Future<void> updateAccount(
    UserModel user,
    StreamController<DataResponse<UserModel>> stream,
  ) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      stream.add(DataResponse.loading());
      try {
        var response = await apiAdapter.dio.post(
          ApiEndpoints.updateAccountApiEndpoint,
          data: user.toJson(),
        );
        final prefs = await SharedPreferences.getInstance();
        var updateResponse = UserModel.fromJson(
          response.data,
        );

        await prefs.setString(
          SharedPreferenceKeys.userKey,
          jsonEncode(
            updateResponse.toJson(),
          ),
        );
        stream.add(DataResponse.completed(
          data: updateResponse,
        ));
      } catch (e) {
        stream.add(DataResponse.error());
      }
    } else {
      stream.add(
        DataResponse.offline(),
      );
    }
  }

  @override
  Future<DataResponse<UserModel>> updateDeliverymanStatus(bool status) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var sharedPrefs = await SharedPreferences.getInstance();
        var user = UserModel.fromJson(
          jsonDecode(
            sharedPrefs.getString(SharedPreferenceKeys.userKey) ?? '',
          ),
        );
        var response = await apiAdapter.dio.post(
          ApiEndpoints.updateAccountApiEndpoint,
          data: user.copyWith(isAvailable: status).toJson(),
        );
        final prefs = await SharedPreferences.getInstance();
        var updateResponse = UserModel.fromJson(
          response.data,
        );
        await prefs.setString(
          SharedPreferenceKeys.userKey,
          jsonEncode(
            updateResponse.toJson(),
          ),
        );
        return DataResponse.completed(
          data: updateResponse,
        );
      } catch (e) {
        return DataResponse.error();
      }
    } else {
      return DataResponse.offline();
    }
  }
}
