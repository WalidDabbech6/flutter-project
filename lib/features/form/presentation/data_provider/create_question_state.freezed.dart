// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_question_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateQuestionState {
  StreamController<DataResponse<FormModel>> get apiStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateQuestionStateCopyWith<CreateQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuestionStateCopyWith<$Res> {
  factory $CreateQuestionStateCopyWith(
          CreateQuestionState value, $Res Function(CreateQuestionState) then) =
      _$CreateQuestionStateCopyWithImpl<$Res, CreateQuestionState>;
  @useResult
  $Res call({StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class _$CreateQuestionStateCopyWithImpl<$Res, $Val extends CreateQuestionState>
    implements $CreateQuestionStateCopyWith<$Res> {
  _$CreateQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStream = null,
  }) {
    return _then(_value.copyWith(
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateQuestionStateCopyWith<$Res>
    implements $CreateQuestionStateCopyWith<$Res> {
  factory _$$_CreateQuestionStateCopyWith(_$_CreateQuestionState value,
          $Res Function(_$_CreateQuestionState) then) =
      __$$_CreateQuestionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class __$$_CreateQuestionStateCopyWithImpl<$Res>
    extends _$CreateQuestionStateCopyWithImpl<$Res, _$_CreateQuestionState>
    implements _$$_CreateQuestionStateCopyWith<$Res> {
  __$$_CreateQuestionStateCopyWithImpl(_$_CreateQuestionState _value,
      $Res Function(_$_CreateQuestionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStream = null,
  }) {
    return _then(_$_CreateQuestionState(
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ));
  }
}

/// @nodoc

class _$_CreateQuestionState implements _CreateQuestionState {
  _$_CreateQuestionState({required this.apiStream});

  @override
  final StreamController<DataResponse<FormModel>> apiStream;

  @override
  String toString() {
    return 'CreateQuestionState(apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateQuestionState &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateQuestionStateCopyWith<_$_CreateQuestionState> get copyWith =>
      __$$_CreateQuestionStateCopyWithImpl<_$_CreateQuestionState>(
          this, _$identity);
}

abstract class _CreateQuestionState implements CreateQuestionState {
  factory _CreateQuestionState(
      {required final StreamController<DataResponse<FormModel>>
          apiStream}) = _$_CreateQuestionState;

  @override
  StreamController<DataResponse<FormModel>> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_CreateQuestionStateCopyWith<_$_CreateQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}
