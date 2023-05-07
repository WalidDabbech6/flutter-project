import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import '../../data/models/form_model.dart';
part 'detail_form_state.freezed.dart';

@freezed
class DetailFormState with _$DetailFormState {
  factory DetailFormState({
    required FormModel form,
    @Default([]) List<QuestionModel> listQuestion,
    @Default(true) bool listIsLoading,
  }) = _DetailFormState;
}
