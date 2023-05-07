import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:marketplace_client_app/features/authentification/data/models/userProfile_model.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'package:marketplace_client_app/features/form/domain/usecases/create_form.dart';
import '../../../form/data/models/form_model.dart';
import '../../../form/presentation/data_provider/create_form_state.dart';
import 'container_screen_state.dart';

class ContainerScreenProvider extends ChangeNotifier {
  ContainerScreenState state = ContainerScreenState();
  late CreateFormState formState;

  CreateForm createFormUseCase;
  String? formTitle;
  int? category;
  ContainerScreenProvider({
    required this.createFormUseCase,
  });

  initState(UserProfileModel profileModel) {
    state = ContainerScreenState(
      connectedUser: state.connectedUser?.copyWith(profile: profileModel),
    );
    formState = CreateFormState(
      title: '',
      category: 0,
      apiStream: StreamController(),
    );
    formTitle = '';
  }

  getForm(FormModel formModel) {
    formState =
        CreateFormState(title: '', apiStream: StreamController(), category: 0);
    formTitle = formModel.title;
    category = formModel.category;
  }

  void setFormTitle(title) {
    formTitle = title;
  }

  void setFormCategory(cat) {
    category = cat;
  }

  Future<dynamic> getTitle(BuildContext context) async {
    onSubmitPressed();
  }

  onSubmitPressed() {
    createFormUseCase.call(
      CreateFormParams(
        title: formTitle!,
        category: category!,
        apiStream: formState.apiStream,
      ),
    );
  }
}
