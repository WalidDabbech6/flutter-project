// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'submit_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmitFormState {
  String? get code => throw _privateConstructorUsedError;
  Map<String, dynamic>? get form => throw _privateConstructorUsedError;
  StreamController<DataResponse<FormModel>> get apiStream =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmitFormStateCopyWith<SubmitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitFormStateCopyWith<$Res> {
  factory $SubmitFormStateCopyWith(
          SubmitFormState value, $Res Function(SubmitFormState) then) =
      _$SubmitFormStateCopyWithImpl<$Res, SubmitFormState>;
  @useResult
  $Res call(
      {String? code,
      Map<String, dynamic>? form,
      StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class _$SubmitFormStateCopyWithImpl<$Res, $Val extends SubmitFormState>
    implements $SubmitFormStateCopyWith<$Res> {
  _$SubmitFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? form = freezed,
    Object? apiStream = null,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      form: freezed == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubmitFormStateCopyWith<$Res>
    implements $SubmitFormStateCopyWith<$Res> {
  factory _$$_SubmitFormStateCopyWith(
          _$_SubmitFormState value, $Res Function(_$_SubmitFormState) then) =
      __$$_SubmitFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? code,
      Map<String, dynamic>? form,
      StreamController<DataResponse<FormModel>> apiStream});
}

/// @nodoc
class __$$_SubmitFormStateCopyWithImpl<$Res>
    extends _$SubmitFormStateCopyWithImpl<$Res, _$_SubmitFormState>
    implements _$$_SubmitFormStateCopyWith<$Res> {
  __$$_SubmitFormStateCopyWithImpl(
      _$_SubmitFormState _value, $Res Function(_$_SubmitFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? form = freezed,
    Object? apiStream = null,
  }) {
    return _then(_$_SubmitFormState(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      form: freezed == form
          ? _value._form
          : form // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      apiStream: null == apiStream
          ? _value.apiStream
          : apiStream // ignore: cast_nullable_to_non_nullable
              as StreamController<DataResponse<FormModel>>,
    ));
  }
}

/// @nodoc

class _$_SubmitFormState implements _SubmitFormState {
  _$_SubmitFormState(
      {required this.code,
      required final Map<String, dynamic>? form,
      required this.apiStream})
      : _form = form;

  @override
  final String? code;
  final Map<String, dynamic>? _form;
  @override
  Map<String, dynamic>? get form {
    final value = _form;
    if (value == null) return null;
    if (_form is EqualUnmodifiableMapView) return _form;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final StreamController<DataResponse<FormModel>> apiStream;

  @override
  String toString() {
    return 'SubmitFormState(code: $code, form: $form, apiStream: $apiStream)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitFormState &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other._form, _form) &&
            (identical(other.apiStream, apiStream) ||
                other.apiStream == apiStream));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, code, const DeepCollectionEquality().hash(_form), apiStream);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubmitFormStateCopyWith<_$_SubmitFormState> get copyWith =>
      __$$_SubmitFormStateCopyWithImpl<_$_SubmitFormState>(this, _$identity);
}

abstract class _SubmitFormState implements SubmitFormState {
  factory _SubmitFormState(
          {required final String? code,
          required final Map<String, dynamic>? form,
          required final StreamController<DataResponse<FormModel>> apiStream}) =
      _$_SubmitFormState;

  @override
  String? get code;
  @override
  Map<String, dynamic>? get form;
  @override
  StreamController<DataResponse<FormModel>> get apiStream;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitFormStateCopyWith<_$_SubmitFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
