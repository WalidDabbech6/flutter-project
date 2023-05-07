// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userProfile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileModel _$$_UserProfileModelFromJson(Map<String, dynamic> json) =>
    _$_UserProfileModel(
      ville: json['ville'] as String,
      gender: json['gender'] as bool,
      first_name: json['first_name'] as String,
      last_name: json['last_name'] as String,
      job: json['job'] as String,
      profile_photo: json['profile_photo'] as String?,
    );

Map<String, dynamic> _$$_UserProfileModelToJson(_$_UserProfileModel instance) =>
    <String, dynamic>{
      'ville': instance.ville,
      'gender': instance.gender,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'job': instance.job,
      'profile_photo': instance.profile_photo,
    };
