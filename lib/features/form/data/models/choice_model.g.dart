// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'choice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChoiceModel _$$_ChoiceModelFromJson(Map<String, dynamic> json) =>
    _$_ChoiceModel(
      id: json['id'] as int,
      choice: json['choice'] as String,
      is_answer: json['is_answer'] as bool,
    );

Map<String, dynamic> _$$_ChoiceModelToJson(_$_ChoiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'choice': instance.choice,
      'is_answer': instance.is_answer,
    };
