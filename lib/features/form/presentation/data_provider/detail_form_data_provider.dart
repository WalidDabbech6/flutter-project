import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/delete_question.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_form_questions.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/create_question_state.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/submit_form_state.dart';

import '../../../../core/usecases/data_response.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/submit_form.dart';
import 'detail_form_state.dart';

class DetailFormDataProvider extends ChangeNotifier {
  late DetailFormState state;
  GetFormsQuestions getFormQuestions;
  DeleteQuestion deleteQuestion;
  CreateQuestion createQuestion;
  SubmitForm submitForm;
  late SubmitFormState submitFormState;
  late CreateQuestionState questionState;
  Map<String, dynamic>? formJson;
  String? questionTitle;
  bool? is_mandatory;
  DetailFormDataProvider(
      {required this.getFormQuestions,
      required this.deleteQuestion,
      required this.submitForm,
      required this.createQuestion});
  initState() {
    state = DetailFormState(
      form: state.form,
      listIsLoading: true,
      listQuestion: [],
    );
    formJson = {};
    submitFormState = SubmitFormState(
        code: state.form.code, form: {}, apiStream: StreamController());
    questionState = CreateQuestionState(apiStream: StreamController());
    is_mandatory = false;
    getListQuestionForm();
  }

  void setForm(form) {
    formJson = form;
  }

  void launchLoading() {
    state = DetailFormState(
      form: state.form,
      listIsLoading: true,
    );
    questionState = CreateQuestionState(
      apiStream: StreamController(),
    );
    submitFormState = SubmitFormState(
        code: state.form.code, form: {}, apiStream: StreamController());
    notifyListeners();
  }

  onSubmitForm() async {
    var result = await submitForm.call(
      SubmitFormParams(
          apiStream: submitFormState.apiStream,
          form: formJson!,
          code: submitFormState.code!),
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

  void setQuestionTitle(e) {
    questionTitle = e;
  }

  void setIsmanadatory(bool? e) {
    if (is_mandatory != null) {
      if (is_mandatory == false) {
        is_mandatory = true;
      } else {
        is_mandatory = false;
      }
    }
    notifyListeners();
  }

  onSubmitPressed() async {
    var result = await createQuestion.call(
      CreateQuestionParams(
          apiStream: questionState.apiStream,
          code: state.form.code,
          is_manadatory: is_mandatory!,
          title: questionTitle!),
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
    notifyListeners();
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
