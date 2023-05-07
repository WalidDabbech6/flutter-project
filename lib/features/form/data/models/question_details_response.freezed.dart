// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDetailsResponse _$QuestionDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _QuestionDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$QuestionDetailsResponse {
  QuestionModel get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDetailsResponseCopyWith<QuestionDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailsResponseCopyWith<$Res> {
  factory $QuestionDetailsResponseCopyWith(QuestionDetailsResponse value,
          $Res Function(QuestionDetailsResponse) then) =
      _$QuestionDetailsResponseCopyWithImpl<$Res, QuestionDetailsResponse>;
  @useResult
  $Res call({QuestionModel question});

  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class _$QuestionDetailsResponseCopyWithImpl<$Res,
        $Val extends QuestionDetailsResponse>
    implements $QuestionDetailsResponseCopyWith<$Res> {
  _$QuestionDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionModelCopyWith<$Res> get question {
    return $QuestionModelCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionDetailsResponseCopyWith<$Res>
    implements $QuestionDetailsResponseCopyWith<$Res> {
  factory _$$_QuestionDetailsResponseCopyWith(_$_QuestionDetailsResponse value,
          $Res Function(_$_QuestionDetailsResponse) then) =
      __$$_QuestionDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QuestionModel question});

  @override
  $QuestionModelCopyWith<$Res> get question;
}

/// @nodoc
class __$$_QuestionDetailsResponseCopyWithImpl<$Res>
    extends _$QuestionDetailsResponseCopyWithImpl<$Res,
        _$_QuestionDetailsResponse>
    implements _$$_QuestionDetailsResponseCopyWith<$Res> {
  __$$_QuestionDetailsResponseCopyWithImpl(_$_QuestionDetailsResponse _value,
      $Res Function(_$_QuestionDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$_QuestionDetailsResponse(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDetailsResponse implements _QuestionDetailsResponse {
  _$_QuestionDetailsResponse({required this.question});

  factory _$_QuestionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDetailsResponseFromJson(json);

  @override
  final QuestionModel question;

  @override
  String toString() {
    return 'QuestionDetailsResponse(question: $question)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDetailsResponse &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionDetailsResponseCopyWith<_$_QuestionDetailsResponse>
      get copyWith =>
          __$$_QuestionDetailsResponseCopyWithImpl<_$_QuestionDetailsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDetailsResponseToJson(
      this,
    );
  }
}

abstract class _QuestionDetailsResponse implements QuestionDetailsResponse {
  factory _QuestionDetailsResponse({required final QuestionModel question}) =
      _$_QuestionDetailsResponse;

  factory _QuestionDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_QuestionDetailsResponse.fromJson;

  @override
  QuestionModel get question;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDetailsResponseCopyWith<_$_QuestionDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}
