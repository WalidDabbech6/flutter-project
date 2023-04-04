import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/account/domain/repositories/update_account_repository.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import '../../../../core/usecases/usecase.dart';

class UpdateAccount implements UseCase<void, UpdateAccountParams> {
  UpdateAccountRepository repository;

  UpdateAccount({required this.repository});

  @override
  Future<void> call(UpdateAccountParams params) {
    return repository.updateAccount(params.user, params.apiStream);
  }
}

class UpdateAccountParams extends Equatable {
  final UserModel user;
  final StreamController<DataResponse<UserModel>> apiStream;

  const UpdateAccountParams({required this.user, required this.apiStream});

  @override
  List<Object> get props {
    return [user];
  }
}
