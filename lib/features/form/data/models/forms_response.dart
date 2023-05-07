import 'package:freezed_annotation/freezed_annotation.dart';

import 'form_model.dart';

part 'forms_response.freezed.dart';
part 'forms_response.g.dart';

@freezed
class FormsResponse with _$FormsResponse {
  factory FormsResponse({
    required List<FormModel> results,
  }) = _FormsResponse;

  factory FormsResponse.fromJson(Map<String, dynamic> json) =>
      _$FormsResponseFromJson(json);
}
