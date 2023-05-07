// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_choice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateChoiceState {
  StreamController<DataResponse<QuestionModel>> get apiStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateChoiceStateCopyWith<CreateChoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateChoiceStateCopyWith<$Res> {
  factory $CreateChoiceStateCopyWith(
          CreateChoiceState value, $Res Function(CreateChoiceState) then) =
      _$CreateChoiceStateCopyWithImpl<$Res, CreateChoiceState>;
  @useResult
  $Res call({StreamController<DataResponse<QuestionModel>> apiStream});
}

/// @nodoc
class _$CreateChoiceStateCopyWithImpl<$Res, $Val extends CreateChoiceState>
    implements $CreateChoiceStateCopyWith<$Res> {
  _$CreateChoiceStateCopyWithImpl(this._value, this._then);

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
              as StreamController<DataResponse<QuestionModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateChoiceStateCopyWith<$Res>
    implements $CreateChoiceStateCopyWith<$Res> {
  factory _$$_CreateChoiceStateCopyWith(_$_CreateChoiceState value,
          $Res Function(_$_CreateChoiceState) then) =
      __$$_CreateChoiceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StreamController<DataResponse<QuestionModel>> apiStream});
}

/// @nodoc
class __$$_CreateChoiceStateCopyWithImpl<$Res>
    extends _$CreateChoiceStateCopyWithImpl<$Res, _$_CreateChoiceState>
    implements _$$_CreateChoiceStateCopyWith<$Res> {
  __$$_CreateChoiceStateCopyWithImpl(
      _$_CreateChoiceState _value, $Res Function(_$_CreateChoiceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiStream = null,
  }) {
    return _then(_$_CreateChoiceState(
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<QuestionModel>>,
    ));
  }
}

/// @nodoc

class _$_CreateChoiceState implements _CreateChoiceState {
  _$_CreateChoiceState({required this.apiStream});

  @override
  final StreamController<DataResponse<QuestionModel>> apiStream;

  @override
  String toString() {
    return 'CreateChoiceState(apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChoiceState &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChoiceStateCopyWith<_$_CreateChoiceState> get copyWith =>
      __$$_CreateChoiceStateCopyWithImpl<_$_CreateChoiceState>(
          this, _$identity);
}

abstract class _CreateChoiceState implements CreateChoiceState {
  factory _CreateChoiceState(
      {required final StreamController<DataResponse<QuestionModel>>
          apiStream}) = _$_CreateChoiceState;

  @override
  StreamController<DataResponse<QuestionModel>> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_CreateChoiceStateCopyWith<_$_CreateChoiceState> get copyWith =>
      throw _privateConstructorUsedError;
}
