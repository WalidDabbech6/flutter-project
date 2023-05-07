import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/data/models/form_question_response.dart';
import 'package:marketplace_client_app/features/form/data/models/forms_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';

import '../../data/models/question_details_response.dart';

class GetQuestionDetails
    implements UseCase<DataResponse<QuestionDetailsResponse>, String> {
  CreateQuestionRepository repository;

  GetQuestionDetails({
    required this.repository,
  });

  @override
  Future<DataResponse<QuestionDetailsResponse>> call(String params) {
    return repository.getQuestionDetails(params);
  }
}
