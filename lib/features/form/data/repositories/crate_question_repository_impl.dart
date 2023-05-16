import 'dart:async';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/utils/utility_functions.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/data/models/question_details_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_question_repository.dart';

class CreateQuestionRepositoryImpl implements CreateQuestionRepository {
  ApiAdapter apiAdapter;
  CreateQuestionRepositoryImpl({
    required this.apiAdapter,
  });

  @override
  Future<DataResponse<FormModel>> CreateQuestion(
      StreamController<DataResponse<FormModel>> apiStream,
      String code,
      bool is_manadatory,
      String title) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      apiStream.add(DataResponse.loading());
      try {
        var response = await apiAdapter.dio.post(
          ApiEndpoints.createQuestion.format([code]),
          data: {"title": title, "is_manadatory": is_manadatory},
        );
        var createResponse = FormModel.fromJson(
          response.data,
        );

        apiStream.add(DataResponse.completed(
          data: createResponse,
        ));
        return DataResponse.completed(
          data: createResponse,
        );
      } catch (e) {
        print(e);
        apiStream.add(DataResponse.error());
        return DataResponse.error();
      }
    } else {
      apiStream.add(
        DataResponse.offline(),
      );
      return DataResponse.offline();
    }
  }

  @override
  Future<DataResponse<QuestionDetailsResponse>> getQuestionDetails(
      String form) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var response = await apiAdapter.dio.get(
          ApiEndpoints.questionDetailsApiEndpoint.format([form]),
        );
        return DataResponse.completed(
          data: QuestionDetailsResponse.fromJson(response.data),
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
