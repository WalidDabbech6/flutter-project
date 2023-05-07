import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import '../../data/models/form_model.dart';

part 'create_form_state.freezed.dart';

@freezed
class CreateFormState with _$CreateFormState {
  factory CreateFormState({
    required String? title,
    required int? category,
    required StreamController<DataResponse<FormModel>> apiStream,
  }) = _CreateFormState;
}
