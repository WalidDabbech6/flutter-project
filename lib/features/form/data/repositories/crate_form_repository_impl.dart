import 'dart:async';
import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/injector/shared_preference_keys.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/utils/utility_functions.dart';
import 'package:marketplace_client_app/features/authentification/data/models/userProfile_model.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/data/models/form_question_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/forms_response.dart';

class CreateFormRepositoryImpl implements CreateFormRepository {
  ApiAdapter apiAdapter;
  CreateFormRepositoryImpl({
    required this.apiAdapter,
  });

  @override
  Future<DataResponse<FormQuestionResponse>> getFormQuestions(
      String form) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var response = await apiAdapter.dio.get(
          ApiEndpoints.listQuestionsFormApiEndpoint.format([form]),
        );
        return DataResponse.completed(
          data: FormQuestionResponse.fromJson(response.data),
        );
      } catch (e) {
        print(e);
        return DataResponse.error();
      }
    } else {
      return DataResponse.offline();
    }
  }

  @override
  Future<DataResponse<FormsResponse>> getListForms() async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var response = await apiAdapter.dio.get(
          ApiEndpoints.listFormsApiEndpoint,
        );
        return DataResponse.completed(
          data: FormsResponse.fromJson(response.data),
        );
      } catch (e) {
        print(e);
        return DataResponse.error();
      }
    } else {
      return DataResponse.offline();
    }
  }

  @override
  Future<void> CreateForm(String form, int category,
      StreamController<DataResponse<FormModel>> apiStream) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      apiStream.add(DataResponse.loading());
      try {
        var response = await apiAdapter.dio.post(
          ApiEndpoints.createNewFormApiEndpoint,
          data: {'title': form, 'category': category},
        );
        var createResponse = FormModel.fromJson(
          response.data,
        );

        apiStream.add(DataResponse.completed(
          data: createResponse,
        ));
      } catch (e) {
        print(e);
        apiStream.add(DataResponse.error());
      }
    } else {
      apiStream.add(
        DataResponse.offline(),
      );
    }
  }

  @override
  Future<DataResponse<FormQuestionResponse>> deleteQuestion(String form) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var response = await apiAdapter.dio.delete(
          ApiEndpoints.deleteQuestionApiEndpoint.format([form]),
        );
        return DataResponse.completed(
          data: FormQuestionResponse.fromJson(response.data),
        );
      } catch (e) {
        print(e);
        return DataResponse.error();
      }
    } else {
      return DataResponse.offline();
    }
  }
}
