// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormModelModel _$$_FormModelModelFromJson(Map<String, dynamic> json) =>
    _$_FormModelModel(
      id: json['id'] as int,
      questions:
          (json['questions'] as List<dynamic>).map((e) => e as int).toList(),
      code: json['code'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      background_color: json['background_color'] as String,
      text_color: json['text_color'] as String,
      collect_email: json['collect_email'] as bool,
      authenticated_responder: json['authenticated_responder'] as bool,
      edit_after_submit: json['edit_after_submit'] as bool,
      confirmation_message: json['confirmation_message'] as String,
      is_quiz: json['is_quiz'] as bool,
      allow_view_score: json['allow_view_score'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      categoryTitle: json['categoryTitle'] as String?,
      category: json['category'] as int?,
      creator: json['creator'] as int,
    );

Map<String, dynamic> _$$_FormModelModelToJson(_$_FormModelModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'questions': instance.questions,
      'code': instance.code,
      'title': instance.title,
      'description': instance.description,
      'background_color': instance.background_color,
      'text_color': instance.text_color,
      'collect_email': instance.collect_email,
      'authenticated_responder': instance.authenticated_responder,
      'edit_after_submit': instance.edit_after_submit,
      'confirmation_message': instance.confirmation_message,
      'is_quiz': instance.is_quiz,
      'allow_view_score': instance.allow_view_score,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'categoryTitle': instance.categoryTitle,
      'category': instance.category,
      'creator': instance.creator,
    };
