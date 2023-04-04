import 'package:dio/dio.dart';
import 'package:marketplace_client_app/core/injector/api_interceptor.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

const String serverBaseUrl = 'http://192.168.118.144:3000';

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
  static const loginApiEndpoint = '/users';
  static const resetPasswordApiEndpoint = '/auth/reset-password';
  static const listOrderApiEndpoint = '/orders';
  static const listActiveOrderApiEndpoint = '/orders/active';
  static const listHistoricApiEndpoint = '/orders/history';
  static const updateAccountApiEndpoint = '/users/me';
  static const changeOrderStatusEndpoint = '/orders/%s/delivery-status';
}
