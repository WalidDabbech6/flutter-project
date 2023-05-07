import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/authentification/data/models/userProfile_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {required int id,
      required String password,
      required String email,
      required bool isVerified,
      required String otp,
      required UserProfileModel profile}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
