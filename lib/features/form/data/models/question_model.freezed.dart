// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionModel _$QuestionModelFromJson(Map<String, dynamic> json) {
  return _QuestionModel.fromJson(json);
}

/// @nodoc
mixin _$QuestionModel {
  int get id_question => throw _privateConstructorUsedError;
  List<ChoiceModel> get choices => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get is_mandatory => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get answer_key => throw _privateConstructorUsedError;
  int get Score => throw _privateConstructorUsedError;
  String? get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call(
      {int id_question,
      List<ChoiceModel> choices,
      String title,
      bool is_mandatory,
      String type,
      String answer_key,
      int Score,
      String? feedback});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_question = null,
    Object? choices = null,
    Object? title = null,
    Object? is_mandatory = null,
    Object? type = null,
    Object? answer_key = null,
    Object? Score = null,
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      id_question: null == id_question
          ? _value.id_question
          : id_question // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      is_mandatory: null == is_mandatory
          ? _value.is_mandatory
          : is_mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answer_key: null == answer_key
          ? _value.answer_key
          : answer_key // ignore: cast_nullable_to_non_nullable
              as String,
      Score: null == Score
          ? _value.Score
          : Score // ignore: cast_nullable_to_non_nullable
              as int,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionModelCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$_QuestionModelCopyWith(
          _$_QuestionModel value, $Res Function(_$_QuestionModel) then) =
      __$$_QuestionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id_question,
      List<ChoiceModel> choices,
      String title,
      bool is_mandatory,
      String type,
      String answer_key,
      int Score,
      String? feedback});
}

/// @nodoc
class __$$_QuestionModelCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$_QuestionModel>
    implements _$$_QuestionModelCopyWith<$Res> {
  __$$_QuestionModelCopyWithImpl(
      _$_QuestionModel _value, $Res Function(_$_QuestionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_question = null,
    Object? choices = null,
    Object? title = null,
    Object? is_mandatory = null,
    Object? type = null,
    Object? answer_key = null,
    Object? Score = null,
    Object? feedback = freezed,
  }) {
    return _then(_$_QuestionModel(
      id_question: null == id_question
          ? _value.id_question
          : id_question // ignore: cast_nullable_to_non_nullable
              as int,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      is_mandatory: null == is_mandatory
          ? _value.is_mandatory
          : is_mandatory // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answer_key: null == answer_key
          ? _value.answer_key
          : answer_key // ignore: cast_nullable_to_non_nullable
              as String,
      Score: null == Score
          ? _value.Score
          : Score // ignore: cast_nullable_to_non_nullable
              as int,
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionModel implements _QuestionModel {
  _$_QuestionModel(
      {required this.id_question,
      required final List<ChoiceModel> choices,
      required this.title,
      required this.is_mandatory,
      required this.type,
      required this.answer_key,
      required this.Score,
      required this.feedback})
      : _choices = choices;

  factory _$_QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionModelFromJson(json);

  @override
  final int id_question;
  final List<ChoiceModel> _choices;
  @override
  List<ChoiceModel> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final String title;
  @override
  final bool is_mandatory;
  @override
  final String type;
  @override
  final String answer_key;
  @override
  final int Score;
  @override
  final String? feedback;

  @override
  String toString() {
    return 'QuestionModel(id_question: $id_question, choices: $choices, title: $title, is_mandatory: $is_mandatory, type: $type, answer_key: $answer_key, Score: $Score, feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionModel &&
            (identical(other.id_question, id_question) ||
                other.id_question == id_question) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.is_mandatory, is_mandatory) ||
                other.is_mandatory == is_mandatory) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.answer_key, answer_key) ||
                other.answer_key == answer_key) &&
            (identical(other.Score, Score) || other.Score == Score) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id_question,
      const DeepCollectionEquality().hash(_choices),
      title,
      is_mandatory,
      type,
      answer_key,
      Score,
      feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      __$$_QuestionModelCopyWithImpl<_$_QuestionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionModelToJson(
      this,
    );
  }
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
      {required final int id_question,
      required final List<ChoiceModel> choices,
      required final String title,
      required final bool is_mandatory,
      required final String type,
      required final String answer_key,
      required final int Score,
      required final String? feedback}) = _$_QuestionModel;

  factory _QuestionModel.fromJson(Map<String, dynamic> json) =
      _$_QuestionModel.fromJson;

  @override
  int get id_question;
  @override
  List<ChoiceModel> get choices;
  @override
  String get title;
  @override
  bool get is_mandatory;
  @override
  String get type;
  @override
  String get answer_key;
  @override
  int get Score;
  @override
  String? get feedback;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionModelCopyWith<_$_QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
