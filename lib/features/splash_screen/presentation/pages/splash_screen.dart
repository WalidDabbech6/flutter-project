import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:marketplace_client_app/features/authentification/data/models/user_model.dart';
import 'package:marketplace_client_app/features/authentification/presentation/pages/login_screen.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_state.dart';
import 'package:marketplace_client_app/features/container/presentation/pages/conainer_screen.dart';
import 'package:provider/provider.dart';
import '../../../../core/injector/shared_preference_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../authentification/presentation/pages/login_options_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SharedPreferences.getInstance().then((prefs) {
      if (prefs.getString(SharedPreferenceKeys.userKey) != null) {
        _navigateToHome(prefs);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const LoginOptionsScreen(),
          ),
        );
      }
    });
  }

  _navigateToHome(prefs) {
    var user = UserModel.fromJson(
      jsonDecode(
        prefs.getString(SharedPreferenceKeys.userKey)!,
      ),
    );
    var containerProvider = Provider.of<ContainerScreenProvider>(
      context,
      listen: false,
    );
    containerProvider.state = ContainerScreenState(
      connectedUser: user,
    );
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const ConainerScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
