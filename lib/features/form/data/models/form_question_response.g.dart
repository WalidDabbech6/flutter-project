// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormQuestionResponse _$$_FormQuestionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_FormQuestionResponse(
      questions: (json['questions'] as List<dynamic>)
          .map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FormQuestionResponseToJson(
        _$_FormQuestionResponse instance) =>
    <String, dynamic>{
      'questions': instance.questions,
    };
