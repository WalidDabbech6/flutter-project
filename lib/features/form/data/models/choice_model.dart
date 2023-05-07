import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'choice_model.freezed.dart';
part 'choice_model.g.dart';

@freezed
class ChoiceModel with _$ChoiceModel {
  factory ChoiceModel({
    required int id,
    required String choice,
    required bool is_answer,
  }) = _ChoiceModel;

  factory ChoiceModel.fromJson(Map<String, dynamic> json) =>
      _$ChoiceModelFromJson(json);
}
