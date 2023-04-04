// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get emailError => throw _privateConstructorUsedError;
  bool get passwordError => throw _privateConstructorUsedError;
  StreamController<dynamic> get apiStream => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call(
      {String email,
      String password,
      bool emailError,
      bool passwordError,
      StreamController<dynamic> apiStream});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? apiStream = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginScreenStateCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$_LoginScreenStateCopyWith(
          _$_LoginScreenState value, $Res Function(_$_LoginScreenState) then) =
      __$$_LoginScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool emailError,
      bool passwordError,
      StreamController<dynamic> apiStream});
}

/// @nodoc
class __$$_LoginScreenStateCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$_LoginScreenState>
    implements _$$_LoginScreenStateCopyWith<$Res> {
  __$$_LoginScreenStateCopyWithImpl(
      _$_LoginScreenState _value, $Res Function(_$_LoginScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? emailError = null,
    Object? passwordError = null,
    Object? apiStream = null,
  }) {
    return _then(_$_LoginScreenState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      emailError: null == emailError
          ? _value.emailError
          : emailError // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordError: null == passwordError
          ? _value.passwordError
          : passwordError // ignore: cast_nullable_to_non_nullable
              as bool,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<dynamic>,
    ));
  }
}

/// @nodoc

class _$_LoginScreenState implements _LoginScreenState {
  _$_LoginScreenState(
      {this.email = '',
      this.password = '',
      this.emailError = false,
      this.passwordError = false,
      required this.apiStream});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool emailError;
  @override
  @JsonKey()
  final bool passwordError;
  @override
  final StreamController<dynamic> apiStream;

  @override
  String toString() {
    return 'LoginScreenState(email: $email, password: $password, emailError: $emailError, passwordError: $passwordError, apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginScreenState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.emailError, emailError) ||
                other.emailError == emailError) &&
            (identical(other.passwordError, passwordError) ||
                other.passwordError == passwordError) &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, email, password, emailError, passwordError, apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginScreenStateCopyWith<_$_LoginScreenState> get copyWith =>
      __$$_LoginScreenStateCopyWithImpl<_$_LoginScreenState>(this, _$identity);
}

abstract class _LoginScreenState implements LoginScreenState {
  factory _LoginScreenState(
          {final String email,
          final String password,
          final bool emailError,
          final bool passwordError,
          required final StreamController<dynamic> apiStream}) =
      _$_LoginScreenState;

  @override
  String get email;
  @override
  String get password;
  @override
  bool get emailError;
  @override
  bool get passwordError;
  @override
  StreamController<dynamic> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_LoginScreenStateCopyWith<_$_LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
