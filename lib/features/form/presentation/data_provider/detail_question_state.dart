import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marketplace_client_app/features/form/data/models/choice_model.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
part 'detail_question_state.freezed.dart';

@freezed
class DetailQuestionState with _$DetailQuestionState {
  factory DetailQuestionState({
    required QuestionModel question,
    @Default([]) List<ChoiceModel> listChoices,
    @Default(true) bool listIsLoading,
  }) = _DetailQuestionState;
}
