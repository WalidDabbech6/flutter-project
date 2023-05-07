import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/account/domain/repositories/update_account_repository.dart';
import 'package:marketplace_client_app/features/authentification/data/models/userProfile_model.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/form_model.dart';

class CreateForm implements UseCase<void, CreateFormParams> {
  CreateFormRepository repository;

  CreateForm({required this.repository});

  @override
  Future<void> call(CreateFormParams params) {
    return repository.CreateForm(
        params.title, params.category, params.apiStream);
  }
}

class CreateFormParams extends Equatable {
  final String title;
  final int category;
  final StreamController<DataResponse<FormModel>> apiStream;

  const CreateFormParams(
      {required this.title, required this.category, required this.apiStream});

  @override
  List<Object> get props {
    return [title];
  }
}
