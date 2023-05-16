import 'dart:async';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/get_form_responses.dart';
import '../../../../core/usecases/data_response.dart';

class ResponsesFormDataProvider extends ChangeNotifier {
  GetFormResponses getFormResponses;
  Map<String, dynamic>? formJson;
  String? form;
  ResponsesFormDataProvider({
    required this.getFormResponses,
  });
  initState() {
    formJson = {};
    form = form;
    getResponsesForm();
  }

  void setFormCode(code) {
    form = code;
  }

  Future<void> getResponsesForm() async {
    var result = await getFormResponses.call(form!);
    switch (result.status) {
      case Status.completed:
        formJson = result.data!;
        notifyListeners();
        break;
      default:
        formJson = {};
        notifyListeners();
        break;
    }
  }
}
