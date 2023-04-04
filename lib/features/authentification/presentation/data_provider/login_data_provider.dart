import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:marketplace_client_app/features/authentification/domain/usecases/authenticate_user.dart';
import 'login_screen_state.dart';

class LoginDataProvider extends ChangeNotifier {
  AuthenticateUser authenticateUser;
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late LoginScreenState state;

  initState() {
    usernameController.clear();
    passwordController.clear();
    state = LoginScreenState(
      apiStream: StreamController(),
      email: '',
      password: '',
    );
  }

  LoginDataProvider({
    required this.authenticateUser,
  });

  verifyInput() {
    state = state.copyWith(
      emailError: state.email.isEmpty,
      passwordError: state.password.isEmpty,
    );
    notifyListeners();
  }

  onSubmitPressed() {
    verifyInput();
    if (!state.emailError && !state.passwordError) {
      authenticateUser.call(
        AuthenticateUserParams(
          email: state.email,
          password: state.password,
          apiStream: state.apiStream,
        ),
      );
    }
  }

  updateEmail(String emailValue) {
    state = state.copyWith(email: emailValue);
  }

  updatePassword(String passwordValue) {
    state = state.copyWith(password: passwordValue);
  }
}
