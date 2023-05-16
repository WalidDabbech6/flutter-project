import 'dart:async';

import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/data/models/question_details_response.dart';
import '../../data/models/form_model.dart';

abstract class CreateQuestionRepository {
  Future<DataResponse<FormModel>> CreateQuestion(
      StreamController<DataResponse<FormModel>> apiStream,
      String code,
      bool is_manadatory,
      String title);
  Future<DataResponse<QuestionDetailsResponse>> getQuestionDetails(
      String question);
}
