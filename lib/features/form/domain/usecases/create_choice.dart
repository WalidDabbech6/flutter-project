import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';
import '../../../../core/usecases/usecase.dart';
import '../../data/models/form_model.dart';
import '../repositories/create_choice_repository.dart';
import 'create_choice.dart';

class CreateChoice implements UseCase<void, CreateChoiceParams> {
  CreateChoiceRepository repository;

  CreateChoice({required this.repository});

  @override
  Future<DataResponse<QuestionModel>> call(CreateChoiceParams params) {
    return repository.CreatChoice(params.apiStream, params.code, params.title);
  }
}

class CreateChoiceParams extends Equatable {
  final StreamController<DataResponse<QuestionModel>> apiStream;
  final String code;
  final String title;
  const CreateChoiceParams(
      {required this.apiStream, required this.code, required this.title});

  @override
  List<Object> get props {
    return [];
  }
}
