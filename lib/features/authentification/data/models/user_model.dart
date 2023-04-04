import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  factory UserModel(
      {required String username,
      required String email,
      required String firstName,
      required String lastName,
      required String phone,
      required String address,
      required String createdAt,
      required String updatedAt,
      required String id,
      required String fullName,
      required bool isAvailable}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
