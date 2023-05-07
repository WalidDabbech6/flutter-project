import 'dart:async';

import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/data/models/question_details_response.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import '../../data/models/form_model.dart';

abstract class CreateChoiceRepository {
  Future<DataResponse<QuestionModel>> CreatChoice(
      StreamController<DataResponse<QuestionModel>> apiStream,
      String code,
      String title);
  Future<DataResponse<QuestionModel>> DeleteChoice(String code);
}
