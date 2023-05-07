import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import '../../data/models/question_model.dart';

part 'create_choice_state.freezed.dart';

@freezed
class CreateChoiceState with _$CreateChoiceState {
  factory CreateChoiceState({
    required StreamController<DataResponse<QuestionModel>> apiStream,
  }) = _CreateChoiceState;
}
