import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'choice_model.dart';
part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    required int id_question,
    required List<ChoiceModel> choices,
    required String title,
    required bool is_mandatory,
    required String type,
    required String answer_key,
    required int Score,
    required String? feedback,
  }) = _QuestionModel;

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);
}
