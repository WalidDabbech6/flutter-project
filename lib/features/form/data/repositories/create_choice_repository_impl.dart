import 'dart:async';
import 'package:marketplace_client_app/core/injector/api_adapter.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/utils/utility_functions.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_choice_repository.dart';

class CreateChoiceRepositoryImpl implements CreateChoiceRepository {
  ApiAdapter apiAdapter;
  CreateChoiceRepositoryImpl({
    required this.apiAdapter,
  });

  @override
  Future<DataResponse<QuestionModel>> CreatChoice(
      StreamController<DataResponse<QuestionModel>> apiStream,
      String code,
      String title) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      apiStream.add(DataResponse.loading());
      try {
        var response = await apiAdapter.dio.post(
          ApiEndpoints.createChoice.format([code]),
          data: {"title": title},
        );
        var createResponse = QuestionModel.fromJson(
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
  Future<DataResponse<QuestionModel>> DeleteChoice(String code) async {
    var hasNetwork = await verifyConnection();
    if (hasNetwork) {
      try {
        var response = await apiAdapter.dio.delete(
          ApiEndpoints.deleteChoiceApiEndpoint.format([code]),
        );
        return DataResponse.completed(
          data: QuestionModel.fromJson(response.data),
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
