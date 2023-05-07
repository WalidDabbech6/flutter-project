// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDetailsResponse _$$_QuestionDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionDetailsResponse(
      question:
          QuestionModel.fromJson(json['question'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuestionDetailsResponseToJson(
        _$_QuestionDetailsResponse instance) =>
    <String, dynamic>{
      'question': instance.question,
    };
