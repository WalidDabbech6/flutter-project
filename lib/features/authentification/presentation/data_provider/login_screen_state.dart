import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_screen_state.freezed.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  factory LoginScreenState({
    @Default('') String email,
    @Default('') String password,
    @Default(false) bool emailError,
    @Default(false) bool passwordError,
    required StreamController apiStream,
  }) = _LoginScreenState;
}
