import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';

import 'form_model.dart';

part 'form_question_response.freezed.dart';
part 'form_question_response.g.dart';

@freezed
class FormQuestionResponse with _$FormQuestionResponse {
  factory FormQuestionResponse({
    required List<QuestionModel> questions,
  }) = _FormQuestionResponse;

  factory FormQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$FormQuestionResponseFromJson(json);
}
