import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';

part 'container_screen_state.freezed.dart';

@freezed
class ContainerScreenState with _$ContainerScreenState {
  factory ContainerScreenState({
    UserModel? connectedUser,
  }) = _ContainerScreenState;
}
