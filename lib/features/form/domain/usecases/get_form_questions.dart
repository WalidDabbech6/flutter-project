import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/data/models/form_question_response.dart';
import 'package:marketplace_client_app/features/form/data/models/forms_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';

class GetFormsQuestions
    implements UseCase<DataResponse<FormQuestionResponse>, String> {
  CreateFormRepository repository;

  GetFormsQuestions({
    required this.repository,
  });

  @override
  Future<DataResponse<FormQuestionResponse>> call(String params) {
    return repository.getFormQuestions(params);
  }
}
