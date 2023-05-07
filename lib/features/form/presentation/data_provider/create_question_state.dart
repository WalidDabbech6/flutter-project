import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import '../../data/models/form_model.dart';

part 'create_question_state.freezed.dart';

@freezed
class CreateQuestionState with _$CreateQuestionState {
  factory CreateQuestionState({
    required StreamController<DataResponse<FormModel>> apiStream,
  }) = _CreateQuestionState;
}
