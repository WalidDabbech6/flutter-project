import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:marketplace_client_app/Theme/theme_provider.dart';
import 'package:marketplace_client_app/core/injector/di_injector.dart';
import 'package:marketplace_client_app/features/account/presentation/data_provider/profile_data_provider.dart';
import 'package:marketplace_client_app/features/account/domain/usecases/update_account.dart';
import 'package:marketplace_client_app/features/authentification/domain/usecases/authenticate_user.dart';
import 'package:marketplace_client_app/features/authentification/presentation/data_provider/login_data_provider.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:marketplace_client_app/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:marketplace_client_app/page/on_boarding_page.dart';
import 'package:provider/provider.dart';

Future main() async {
  initializeInjector();
  WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.removeAfter(initialization);
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => LoginDataProvider(
        authenticateUser: injector<AuthenticateUser>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => ProfileDataProvider(
        updateAccountUseCase: injector<UpdateAccount>(),
      ),
    ),
    ChangeNotifierProvider(
      create: (context) => ContainerScreenProvider(),
    ),
    ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider()..initilize()),
  ], child: MyApp()));
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) =>
      Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            themeMode: themeProvider.themeMode,
            theme: MyTheme.lightTheme,
            darkTheme: MyTheme.darkTheme,
            home: OnBoardingScreenPageState());
      });
}
