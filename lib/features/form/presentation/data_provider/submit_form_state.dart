import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import '../../data/models/form_model.dart';

part 'submit_form_state.freezed.dart';

@freezed
class SubmitFormState with _$SubmitFormState {
  factory SubmitFormState({
    required String? code,
    required Map<String, dynamic>? form,
    required StreamController<DataResponse<FormModel>> apiStream,
  }) = _SubmitFormState;
}
