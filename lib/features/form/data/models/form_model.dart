import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'form_model.freezed.dart';
part 'form_model.g.dart';

@freezed
class FormModel with _$FormModel {
  factory FormModel(
      {required int id,
      required List<int> questions,
      required String code,
      required String title,
      required String description,
      required String background_color,
      required String text_color,
      required bool collect_email,
      required bool authenticated_responder,
      required bool edit_after_submit,
      required String confirmation_message,
      required bool is_quiz,
      required bool allow_view_score,
      required String createdAt,
      required String updatedAt,
      required String? categoryTitle,
      required int? category,
      required int creator}) = _FormModelModel;

  factory FormModel.fromJson(Map<String, dynamic> json) =>
      _$FormModelFromJson(json);
}
