// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'container_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContainerScreenState {
  UserModel? get connectedUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContainerScreenStateCopyWith<ContainerScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContainerScreenStateCopyWith<$Res> {
  factory $ContainerScreenStateCopyWith(ContainerScreenState value,
          $Res Function(ContainerScreenState) then) =
      _$ContainerScreenStateCopyWithImpl<$Res, ContainerScreenState>;
  @useResult
  $Res call({UserModel? connectedUser});

  $UserModelCopyWith<$Res>? get connectedUser;
}

/// @nodoc
class _$ContainerScreenStateCopyWithImpl<$Res,
        $Val extends ContainerScreenState>
    implements $ContainerScreenStateCopyWith<$Res> {
  _$ContainerScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedUser = freezed,
  }) {
    return _then(_value.copyWith(
      connectedUser: freezed == connectedUser
          ? _value.connectedUser
          : connectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get connectedUser {
    if (_value.connectedUser == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.connectedUser!, (value) {
      return _then(_value.copyWith(connectedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContainerScreenStateCopyWith<$Res>
    implements $ContainerScreenStateCopyWith<$Res> {
  factory _$$_ContainerScreenStateCopyWith(_$_ContainerScreenState value,
          $Res Function(_$_ContainerScreenState) then) =
      __$$_ContainerScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel? connectedUser});

  @override
  $UserModelCopyWith<$Res>? get connectedUser;
}

/// @nodoc
class __$$_ContainerScreenStateCopyWithImpl<$Res>
    extends _$ContainerScreenStateCopyWithImpl<$Res, _$_ContainerScreenState>
    implements _$$_ContainerScreenStateCopyWith<$Res> {
  __$$_ContainerScreenStateCopyWithImpl(_$_ContainerScreenState _value,
      $Res Function(_$_ContainerScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectedUser = freezed,
  }) {
    return _then(_$_ContainerScreenState(
      connectedUser: freezed == connectedUser
          ? _value.connectedUser
          : connectedUser // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$_ContainerScreenState implements _ContainerScreenState {
  _$_ContainerScreenState({this.connectedUser});

  @override
  final UserModel? connectedUser;

  @override
  String toString() {
    return 'ContainerScreenState(connectedUser: $connectedUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContainerScreenState &&
            (identical(other.connectedUser, connectedUser) ||
                other.connectedUser == connectedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContainerScreenStateCopyWith<_$_ContainerScreenState> get copyWith =>
      __$$_ContainerScreenStateCopyWithImpl<_$_ContainerScreenState>(
          this, _$identity);
}

abstract class _ContainerScreenState implements ContainerScreenState {
  factory _ContainerScreenState({final UserModel? connectedUser}) =
      _$_ContainerScreenState;

  @override
  UserModel? get connectedUser;
  @override
  @JsonKey(ignore: true)
  _$$_ContainerScreenStateCopyWith<_$_ContainerScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
