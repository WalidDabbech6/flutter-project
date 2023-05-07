// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['id'] as int,
      password: json['password'] as String,
      email: json['email'] as String,
      isVerified: json['isVerified'] as bool,
      otp: json['otp'] as String,
      profile:
          UserProfileModel.fromJson(json['profile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'password': instance.password,
      'email': instance.email,
      'isVerified': instance.isVerified,
      'otp': instance.otp,
      'profile': instance.profile,
    };
