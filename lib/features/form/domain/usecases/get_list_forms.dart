import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/usecases/usecase.dart';
import 'package:marketplace_client_app/features/form/data/models/forms_response.dart';
import 'package:marketplace_client_app/features/form/domain/repositories/create_form_repository.dart';

class GetlistForms implements UseCase<DataResponse<FormsResponse>, NoParams> {
  CreateFormRepository repository;

  GetlistForms({
    required this.repository,
  });

  @override
  Future<DataResponse<FormsResponse>> call(NoParams params) {
    return repository.getListForms();
  }
}
