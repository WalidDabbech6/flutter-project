import 'dart:async';

import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/form/data/models/form_question_response.dart';
import 'package:marketplace_client_app/features/form/data/models/forms_response.dart';

import '../../data/models/form_model.dart';

abstract class CreateFormRepository {
  Future<void> CreateForm(String form, int category,
      StreamController<DataResponse<FormModel>> apiStream);
  Future<DataResponse<FormModel>> SubmitForm(Map<String, dynamic> form,
      String code, StreamController<DataResponse<FormModel>> apiStream);
  Future<DataResponse<FormsResponse>> getListForms();
  Future<DataResponse<FormQuestionResponse>> getFormQuestions(String form);
  Future<DataResponse<FormQuestionResponse>> deleteQuestion(String form);
  Future<DataResponse<Map<String, dynamic>>> getFormResponses(String form);
}
