import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';

import 'form_model.dart';

part 'question_details_response.freezed.dart';
part 'question_details_response.g.dart';

@freezed
class QuestionDetailsResponse with _$QuestionDetailsResponse {
  factory QuestionDetailsResponse({
    required QuestionModel question,
  }) = _QuestionDetailsResponse;

  factory QuestionDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$QuestionDetailsResponseFromJson(json);
}
