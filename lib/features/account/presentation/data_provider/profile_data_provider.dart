import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/features/account/domain/usecases/update_account.dart';
import 'package:marketplace_client_app/features/account/presentation/data_provider/update_account_state.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileDataProvider extends ChangeNotifier {
  UpdateAccount updateAccountUseCase;
  late UpdateAccountState state;
  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  String? actualPassword;
  ProfileDataProvider({
    required this.updateAccountUseCase,
  });

  initState(UserModel user) {
    state = UpdateAccountState(
      user: user,
      apiStream: StreamController(),
    );
    actualPassword = '';
  }

  void updateFirstName(firstName) {
    state = state.copyWith(user: state.user.copyWith(firstName: firstName));
  }

  void updateLastName(lastName) {
    state = state.copyWith(user: state.user.copyWith(lastName: lastName));
  }

  void updatePhone(phone) {
    state = state.copyWith(user: state.user.copyWith(phone: phone));
  }

  void updateAdress(adress) {
    state = state.copyWith(user: state.user.copyWith(address: adress));
  }

  void updateEmail(email) {
    state = state.copyWith(user: state.user.copyWith(email: email));
  }

  void setPassword(password) {
    actualPassword = password;
  }

  Future<dynamic> verifyPassword(BuildContext context) async {
    String? pass =
        await secureStorage.read(key: SharedPreferenceKeys.passwordKey);
    if (pass == actualPassword) {
      onSubmitPressed();
    } else {
      context.displayErrorSnackbar(
        message: 'Incorrect Password',
      );
    }
  }

  onSubmitPressed() {
    updateAccountUseCase.call(
      UpdateAccountParams(
        user: state.user,
        apiStream: state.apiStream,
      ),
    );
  }

  Future logout() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.clear();
  }
}
