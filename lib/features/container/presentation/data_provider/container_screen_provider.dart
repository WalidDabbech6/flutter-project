import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'container_screen_state.dart';

class ContainerScreenProvider extends ChangeNotifier {
  ContainerScreenState state = ContainerScreenState();

  ContainerScreenProvider();

  initState(UserModel user) {
    state = ContainerScreenState(
      connectedUser: user,
    );
  }
}
