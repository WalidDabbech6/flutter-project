// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormQuestionResponse _$FormQuestionResponseFromJson(Map<String, dynamic> json) {
  return _FormQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$FormQuestionResponse {
  List<QuestionModel> get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormQuestionResponseCopyWith<FormQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormQuestionResponseCopyWith<$Res> {
  factory $FormQuestionResponseCopyWith(FormQuestionResponse value,
          $Res Function(FormQuestionResponse) then) =
      _$FormQuestionResponseCopyWithImpl<$Res, FormQuestionResponse>;
  @useResult
  $Res call({List<QuestionModel> questions});
}

/// @nodoc
class _$FormQuestionResponseCopyWithImpl<$Res,
        $Val extends FormQuestionResponse>
    implements $FormQuestionResponseCopyWith<$Res> {
  _$FormQuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FormQuestionResponseCopyWith<$Res>
    implements $FormQuestionResponseCopyWith<$Res> {
  factory _$$_FormQuestionResponseCopyWith(_$_FormQuestionResponse value,
          $Res Function(_$_FormQuestionResponse) then) =
      __$$_FormQuestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QuestionModel> questions});
}

/// @nodoc
class __$$_FormQuestionResponseCopyWithImpl<$Res>
    extends _$FormQuestionResponseCopyWithImpl<$Res, _$_FormQuestionResponse>
    implements _$$_FormQuestionResponseCopyWith<$Res> {
  __$$_FormQuestionResponseCopyWithImpl(_$_FormQuestionResponse _value,
      $Res Function(_$_FormQuestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$_FormQuestionResponse(
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FormQuestionResponse implements _FormQuestionResponse {
  _$_FormQuestionResponse({required final List<QuestionModel> questions})
      : _questions = questions;

  factory _$_FormQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FormQuestionResponseFromJson(json);

  final List<QuestionModel> _questions;
  @override
  List<QuestionModel> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  @override
  String toString() {
    return 'FormQuestionResponse(questions: $questions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormQuestionResponse &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormQuestionResponseCopyWith<_$_FormQuestionResponse> get copyWith =>
      __$$_FormQuestionResponseCopyWithImpl<_$_FormQuestionResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormQuestionResponseToJson(
      this,
    );
  }
}

abstract class _FormQuestionResponse implements FormQuestionResponse {
  factory _FormQuestionResponse(
      {required final List<QuestionModel> questions}) = _$_FormQuestionResponse;

  factory _FormQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$_FormQuestionResponse.fromJson;

  @override
  List<QuestionModel> get questions;
  @override
  @JsonKey(ignore: true)
  _$$_FormQuestionResponseCopyWith<_$_FormQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
