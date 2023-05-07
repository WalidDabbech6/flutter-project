import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';

part 'list_forms_state.freezed.dart';

@freezed
class ListFormsState with _$ListFormsState {
  factory ListFormsState({
    @Default([]) List<FormModel> listForms,
    @Default(true) bool listIsLoading,
    @Default({}) Map<String, List<FormModel>> mapListForms,
  }) = _ListFormsState;
}
