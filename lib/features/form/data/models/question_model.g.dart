// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      id_question: json['id_question'] as int,
      choices: (json['choices'] as List<dynamic>)
          .map((e) => ChoiceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      title: json['title'] as String,
      is_mandatory: json['is_mandatory'] as bool,
      type: json['type'] as String,
      answer_key: json['answer_key'] as String,
      Score: json['Score'] as int,
      feedback: json['feedback'] as String?,
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'id_question': instance.id_question,
      'choices': instance.choices,
      'title': instance.title,
      'is_mandatory': instance.is_mandatory,
      'type': instance.type,
      'answer_key': instance.answer_key,
      'Score': instance.Score,
      'feedback': instance.feedback,
    };
