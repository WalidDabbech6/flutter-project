import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';

part 'update_account_state.freezed.dart';

@freezed
class UpdateAccountState with _$UpdateAccountState {
  factory UpdateAccountState({
    required UserModel user,
    required StreamController<DataResponse<UserModel>> apiStream,
  }) = _UpdateAccountState;
}
