import 'dart:async';

import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/features/authentification/data/models/userProfile_model.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';

abstract class UpdateAccountRepository {
  Future<void> updateAccount(UserModel user,
      StreamController<DataResponse<UserProfileModel>> apiStream);
  Future<DataResponse<UserModel>> updateDeliverymanStatus(bool status);
}
