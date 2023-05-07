// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forms_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FormsResponse _$$_FormsResponseFromJson(Map<String, dynamic> json) =>
    _$_FormsResponse(
      results: (json['results'] as List<dynamic>)
          .map((e) => FormModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FormsResponseToJson(_$_FormsResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
