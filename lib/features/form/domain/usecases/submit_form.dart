import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/form_model.dart';

class SubmitForm implements UseCase<void, SubmitFormParams> {
  CreateFormRepository repository;

  SubmitForm({required this.repository});

  @override
  Future<DataResponse<FormModel>> call(SubmitFormParams params) {
    return repository.SubmitForm(params.form, params.code, params.apiStream);
  }
}

class SubmitFormParams extends Equatable {
  final Map<String, dynamic> form;
  final String code;
  final StreamController<DataResponse<FormModel>> apiStream;

  const SubmitFormParams(
      {required this.form, required this.code, required this.apiStream});

  @override
  List<Object> get props {
    return [];
  }
}
