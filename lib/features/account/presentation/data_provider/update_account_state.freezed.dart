// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateAccountState {
  UserModel get user => throw _privateConstructorUsedError;
  StreamController<DataResponse<UserProfileModel>> get apiStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateAccountStateCopyWith<UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountStateCopyWith<$Res> {
  factory $UpdateAccountStateCopyWith(
          UpdateAccountState value, $Res Function(UpdateAccountState) then) =
      _$UpdateAccountStateCopyWithImpl<$Res, UpdateAccountState>;
  @useResult
  $Res call(
      {UserModel user,
      StreamController<DataResponse<UserProfileModel>> apiStream});

  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class _$UpdateAccountStateCopyWithImpl<$Res, $Val extends UpdateAccountState>
    implements $UpdateAccountStateCopyWith<$Res> {
  _$UpdateAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? apiStream = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<UserProfileModel>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get user {
    return $UserModelCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UpdateAccountStateCopyWith<$Res>
    implements $UpdateAccountStateCopyWith<$Res> {
  factory _$$_UpdateAccountStateCopyWith(_$_UpdateAccountState value,
          $Res Function(_$_UpdateAccountState) then) =
      __$$_UpdateAccountStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel user,
      StreamController<DataResponse<UserProfileModel>> apiStream});

  @override
  $UserModelCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UpdateAccountStateCopyWithImpl<$Res>
    extends _$UpdateAccountStateCopyWithImpl<$Res, _$_UpdateAccountState>
    implements _$$_UpdateAccountStateCopyWith<$Res> {
  __$$_UpdateAccountStateCopyWithImpl(
      _$_UpdateAccountState _value, $Res Function(_$_UpdateAccountState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? apiStream = null,
  }) {
    return _then(_$_UpdateAccountState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserModel,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<UserProfileModel>>,
    ));
  }
}

/// @nodoc

class _$_UpdateAccountState implements _UpdateAccountState {
  _$_UpdateAccountState({required this.user, required this.apiStream});

  @override
  final UserModel user;
  @override
  final StreamController<DataResponse<UserProfileModel>> apiStream;

  @override
  String toString() {
    return 'UpdateAccountState(user: $user, apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAccountState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountStateCopyWith<_$_UpdateAccountState> get copyWith =>
      __$$_UpdateAccountStateCopyWithImpl<_$_UpdateAccountState>(
          this, _$identity);
}

abstract class _UpdateAccountState implements UpdateAccountState {
  factory _UpdateAccountState(
      {required final UserModel user,
      required final StreamController<DataResponse<UserProfileModel>>
          apiStream}) = _$_UpdateAccountState;

  @override
  UserModel get user;
  @override
  StreamController<DataResponse<UserProfileModel>> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountStateCopyWith<_$_UpdateAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}
