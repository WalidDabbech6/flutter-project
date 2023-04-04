import 'package:flutter/material.dart';
import 'package:marketplace_client_app/core/usecases/data_response.dart';
import 'package:marketplace_client_app/core/widgets/custom_text_field.dart';
import 'package:marketplace_client_app/core/widgets/loading_popup.dart';
import 'package:marketplace_client_app/features/authentification/presentation/data_provider/login_data_provider.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_state.dart';
import 'package:marketplace_client_app/features/container/presentation/pages/conainer_screen.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/extensions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginDataProvider dataProvider;

  @override
  void initState() {
    super.initState();
    dataProvider = Provider.of<LoginDataProvider>(
      context,
      listen: false,
    );
    dataProvider.initState();
    _observeAuthentication();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Consumer<LoginDataProvider>(
          builder: (context, provider, child) {
            return Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/splash.png',
                        width: 100,
                      ),
                      Text(
                        'Connecter',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        'MarketPlace',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                              color: Theme.of(context).iconTheme.color,
                            ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                        ),
                        child: Container(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          child: Text(
                            'Description',
                            style: Theme.of(context).textTheme.subtitle1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                        child: CustomTextField(
                          controller: provider.usernameController,
                          hint: 'email',
                          onEdit: provider.updateEmail,
                          error: 'there must be an error',
                          displayError: provider.state.emailError,
                        ),
                      ),
                      CustomTextField.password(
                        controller: provider.passwordController,
                        hint: 'password',
                        onEdit: provider.updatePassword,
                        error: 'there must be an error',
                        displayError: provider.state.passwordError,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: ElevatedButton(
                            onPressed: provider.onSubmitPressed,
                            child: Text('Login'),
                            style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).iconTheme.color)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: Text(
                            'forgot password',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'version 1.0',
                    style: Theme.of(context).textTheme.subtitle1!.copyWith(),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  _observeAuthentication() {
    dataProvider.state.apiStream.stream.listen(
      (result) {
        FocusScope.of(context).unfocus();
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Loading...',
              dismiss: false,
            ).show(context);
            break;
          case Status.offline:
            context.displayOfflineSnackbar();
            break;
          case Status.error:
            Navigator.pop(context);
            context.displayErrorSnackbar(
              message: 'ERROR',
            );
            break;
          case Status.completed:
            Navigator.pop(context);
            _navigate(result.data.user);
            break;
          default:
            break;
        }
      },
    );
  }

  @override
  void dispose() {
    dataProvider.state.apiStream.close();
    super.dispose();
  }

  _navigate(data) {
    var containerProvider = Provider.of<ContainerScreenProvider>(
      context,
      listen: false,
    );
    containerProvider.state = ContainerScreenState(
      connectedUser: data,
    );
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ConainerScreen()));
  }
}
