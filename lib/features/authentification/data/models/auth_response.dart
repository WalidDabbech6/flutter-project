import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  factory AuthResponse({
    @JsonKey(name: 'access_token') required String accessToken,
    required UserModel user,
  }) = _AuthReponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}
