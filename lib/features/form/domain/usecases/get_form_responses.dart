import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';

class GetFormResponses
    implements UseCase<DataResponse<Map<String, dynamic>>, String> {
  CreateFormRepository repository;

  GetFormResponses({
    required this.repository,
  });

  @override
  Future<DataResponse<Map<String, dynamic>>> call(String params) {
    return repository.getFormResponses(params);
  }
}
