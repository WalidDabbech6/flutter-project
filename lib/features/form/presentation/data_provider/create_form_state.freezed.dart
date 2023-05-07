// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateFormState {
  String? get title => throw _privateConstructorUsedError;
  int? get category => throw _privateConstructorUsedError;
  StreamController<DataResponse<FormModel>> get apiStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateFormStateCopyWith<CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateFormStateCopyWith<$Res> {
  factory $CreateFormStateCopyWith(
          CreateFormState value, $Res Function(CreateFormState) then) =
      _$CreateFormStateCopyWithImpl<$Res, CreateFormState>;
  @useResult
  $Res call(
      {String? title,
      int? category,
      StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class _$CreateFormStateCopyWithImpl<$Res, $Val extends CreateFormState>
    implements $CreateFormStateCopyWith<$Res> {
  _$CreateFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? apiStream = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateFormStateCopyWith<$Res>
    implements $CreateFormStateCopyWith<$Res> {
  factory _$$_CreateFormStateCopyWith(
          _$_CreateFormState value, $Res Function(_$_CreateFormState) then) =
      __$$_CreateFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      int? category,
      StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class __$$_CreateFormStateCopyWithImpl<$Res>
    extends _$CreateFormStateCopyWithImpl<$Res, _$_CreateFormState>
    implements _$$_CreateFormStateCopyWith<$Res> {
  __$$_CreateFormStateCopyWithImpl(
      _$_CreateFormState _value, $Res Function(_$_CreateFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? apiStream = null,
  }) {
    return _then(_$_CreateFormState(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int?,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ));
  }
}

/// @nodoc

class _$_CreateFormState implements _CreateFormState {
  _$_CreateFormState(
      {required this.title, required this.category, required this.apiStream});

  @override
  final String? title;
  @override
  final int? category;
  @override
  final StreamController<DataResponse<FormModel>> apiStream;

  @override
  String toString() {
    return 'CreateFormState(title: $title, category: $category, apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateFormState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, category, apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      __$$_CreateFormStateCopyWithImpl<_$_CreateFormState>(this, _$identity);
}

abstract class _CreateFormState implements CreateFormState {
  factory _CreateFormState(
          {required final String? title,
          required final int? category,
          required final StreamController<DataResponse<FormModel>> apiStream}) =
      _$_CreateFormState;

  @override
  String? get title;
  @override
  int? get category;
  @override
  StreamController<DataResponse<FormModel>> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_CreateFormStateCopyWith<_$_CreateFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
