import 'dart:async';

import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/data/models/form_model.dart';
import 'package:marketplace_client_app/features/form/data/models/question_model.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_choice.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/delete_choice.dart';
import 'package:marketplace_client_app/features/form/presentation/data_provider/create_question_state.dart';
import 'package:provider/provider.dart';

import '../../../../core/usecases/data_response.dart';
import '../../domain/usecases/get_question_details.dart';
import 'create_choice_state.dart';
import 'detail_question_state.dart';

class DetailQuestionDataProvider extends ChangeNotifier {
  late DetailQuestionState state;
  GetQuestionDetails getQuestionDetails;
  late String questionTitle;
  CreateChoice createChoice;
  DeleteChoice deleteChoice;
  late CreateChoiceState choiceState;

  DetailQuestionDataProvider(
      {required this.getQuestionDetails,
      required this.deleteChoice,
      required this.createChoice});
  initState() {
    state = DetailQuestionState(
      question: state.question,
      listIsLoading: true,
      listChoices: state.listChoices,
    );
    questionTitle = '';
    choiceState = CreateChoiceState(apiStream: StreamController());
    getListQuestionForm();
  }

  void setQuestionTitle(title) {
    questionTitle = title;
  }

  void launchLoading() {
    state = DetailQuestionState(
        question: state.question,
        listIsLoading: true,
        listChoices: state.question.choices);
    choiceState = CreateChoiceState(
      apiStream: StreamController(),
    );
    notifyListeners();
  }

  getQuestion(QuestionModel questionModel) {
    choiceState = CreateChoiceState(apiStream: StreamController());
    questionTitle = questionModel.title;
  }

  Future<dynamic> getTitle(BuildContext context) async {
    onSubmitPressed();
  }

  onSubmitPressed() async {
    var result = await createChoice.call(
      CreateChoiceParams(
          title: questionTitle,
          apiStream: choiceState.apiStream,
          code: state.question.id_question.toString()),
    );
    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
            listIsLoading: false,
            question: result.data!,
            listChoices: result.data!.choices);
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listChoices: state.listChoices,
          listIsLoading: false,
        );
        notifyListeners();
        break;
    }
    getListQuestionForm();
  }

  Future<void> getListQuestionForm() async {
    var result =
        await getQuestionDetails.call(state.question.id_question.toString());
    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
            question: result.data!.question,
            listIsLoading: false,
            listChoices: result.data!.question.choices);
        notifyListeners();
        break;
      default:
        state = state.copyWith(
            question: state.question,
            listIsLoading: false,
            listChoices: state.listChoices);
        notifyListeners();
        break;
    }
  }

  Future<void> deleteSelectedChoice(indexQuestion) async {
    var result = await deleteChoice.call(indexQuestion.toString());
    getListQuestionForm();

    switch (result.status) {
      case Status.completed:
        state = state.copyWith(
          listIsLoading: false,
        );
        notifyListeners();
        break;
      default:
        state = state.copyWith(
          listIsLoading: false,
        );
        notifyListeners();
        getListQuestionForm();
        break;
    }
  }
}
