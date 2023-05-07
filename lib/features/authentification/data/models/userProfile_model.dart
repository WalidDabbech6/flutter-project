import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'userProfile_model.freezed.dart';
part 'userProfile_model.g.dart';

@freezed
class UserProfileModel with _$UserProfileModel {
  factory UserProfileModel({
    required String ville,
    required bool gender,
    required String first_name,
    required String last_name,
    required String job,
    @JsonKey(name: 'profile_photo') String? profile_photo,
  }) = _UserProfileModel;

  factory UserProfileModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileModelFromJson(json);
}
