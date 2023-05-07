import 'package:dio/dio.dart';
import 'package:marketplace_client_app/core/injector/api_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String serverBaseUrl = 'http://192.168.1.14:8000';

class ApiAdapter {
  Dio dio = Dio();
  ApiAdapter() {
    dio.options = BaseOptions(
      baseUrl: serverBaseUrl,
    );
    dio.interceptors.addAll(
      [
        AppInterceptors(
          dio,
        ),
        PrettyDioLogger(
          requestBody: true,
        )
      ],
    );
  }
}

class ApiEndpoints {
  static const loginApiEndpoint = '/account/api/login';
  static const resetPasswordApiEndpoint = '/auth/reset-password';
  static const updateAccountApiEndpoint = '/account/api/updateProfile';
  static const createNewFormApiEndpoint = '/forms/api/create';
  static const listFormsApiEndpoint = '/forms/api/create';
  static const listQuestionsFormApiEndpoint = '/forms/api/%s/questions';
  static const deleteQuestionApiEndpoint = '/forms/api/question/delete/%s';
  static const questionDetailsApiEndpoint = '/forms/api/question/update/%s';

  static const createQuestion = '/forms/api/question/create/%s';
  static const createChoice = '/forms/api/choice/create/%s';
  static const deleteChoiceApiEndpoint = '/forms/api/choice/delte/%s';
}
