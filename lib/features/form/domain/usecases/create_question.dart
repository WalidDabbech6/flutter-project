import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/form_model.dart';

class CreateQuestion implements UseCase<void, CreateQuestionParams> {
  CreateQuestionRepository repository;

  CreateQuestion({required this.repository});

  @override
  Future<DataResponse<FormModel>> call(CreateQuestionParams params) {
    return repository.CreateQuestion(params.apiStream, params.code);
  }
}

class CreateQuestionParams extends Equatable {
  final StreamController<DataResponse<FormModel>> apiStream;
  final String code;
  const CreateQuestionParams({required this.apiStream, required this.code});

  @override
  List<Object> get props {
    return [];
  }
}
