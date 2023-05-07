import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/data/models/form_question_response.dart';
import 'package:marketplace_client_app/features/form/data/models/forms_response.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_choice_repository.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_question.dart';

class DeleteChoice implements UseCase<DataResponse<QuestionModel>, String> {
  CreateChoiceRepository repository;

  DeleteChoice({
    required this.repository,
  });

  @override
  Future<DataResponse<QuestionModel>> call(String params) {
    return repository.DeleteChoice(params);
  }
}
