import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/delete_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_form_questions.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/create_question_state.dart';

import '../../../../core/usecases/data_response.dart';
import '../../../../core/usecases/usecase.dart';
import 'detail_form_state.dart';

class DetailFormDataProvider extends ChangeNotifier {
  late DetailFormState state;
  GetFormsQuestions getFormQuestions;
  DeleteQuestion deleteQuestion;
  CreateQuestion createQuestion;
  late CreateQuestionState questionState;

  DetailFormDataProvider(
      {required this.getFormQuestions,
      required this.deleteQuestion,
      required this.createQuestion});
  initState() {
    state = DetailFormState(
      form: state.form,
      listIsLoading: true,
      listQuestion: [],
    );
    questionState = CreateQuestionState(apiStream: StreamController());
    getListQuestionForm();
  }

  void launchLoading() {
    state = DetailFormState(
      form: state.form,
      listIsLoading: true,
    );
    questionState = CreateQuestionState(
      apiStream: StreamController(),
    );
    notifyListeners();
  }

  onSubmitPressed() async {
    var result = await createQuestion.call(
      CreateQuestionParams(
          apiStream: questionState.apiStream, code: state.form.code),
    );
    switch (result.status) {
      case Status.completed:
        state = state.copyWith(form: result.data!);
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listQuestion: state.listQuestion,
          listIsLoading: false,
        );
        notifyListeners();
        break;
    }
    getListQuestionForm();
  }

  getForm(FormModel formModel) {
    questionState = CreateQuestionState(apiStream: StreamController());
  }

  Future<void> getListQuestionForm() async {
    var result = await getFormQuestions.call(state.form.code);
    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
          listQuestion: result.data!.questions,
          listIsLoading: false,
        );
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listQuestion: result.data!.questions,
          listIsLoading: false,
        );
        notifyListeners();
        break;
    }
  }

  Future<void> deleteSelectedQuestion(indexQuestion) async {
    var result = await deleteQuestion.call(indexQuestion.toString());
    getListQuestionForm();

    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
          listQuestion: result.data!.questions,
          listIsLoading: false,
        );
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listQuestion: result.data!.questions,
          listIsLoading: false,
        );
        notifyListeners();
        getListQuestionForm();
        break;
    }
  }
}
