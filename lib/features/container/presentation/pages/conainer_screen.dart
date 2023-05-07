import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/Theme/theme_provider.dart';
import 'package:marketplace_client_app/core/utils/extensions.dart';
import 'package:marketplace_client_app/core/widgets/change_theme_button.dart';
import 'package:marketplace_client_app/core/widgets/create_new_form.dart';
import 'package:marketplace_client_app/features/account/presentation/pages/profile_screen.dart';
import 'package:marketplace_client_app/features/container/presentation/data_provider/container_screen_provider.dart';
import 'package:marketplace_client_app/features/form/presentation/pages/list_forms_screen.dart';
import 'package:provider/provider.dart';

import '../../../../core/usecases/data_response.dart';
import '../../../../core/widgets/loading_popup.dart';

class ConainerScreen extends StatefulWidget {
  const ConainerScreen({Key? key}) : super(key: key);

  @override
  State<ConainerScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ConainerScreen> {
  int index = 0;
  final screens = <Widget>[
    ConainerScreen(),
    ProfileScreen(),
    ListFormsScreen()
  ];
  final items = <Widget>[
    Icon(
      Icons.home,
      size: 30,
    ),
    Icon(
      Icons.person,
      size: 30,
    ),
    Icon(
      Icons.list,
      size: 30,
    ),
    Icon(
      Icons.settings,
      size: 30,
    ),
    Icon(
      Icons.search,
      size: 30,
    ),
  ];
  late ContainerScreenProvider provider;
  @override
  void initState() {
    super.initState();
    provider = Provider.of<ContainerScreenProvider>(
      context,
      listen: false,
    );
    provider.initState(provider.state.connectedUser!.profile);
    _observeApiResult();
  }

  @override
  Widget build(BuildContext context) {
    final text =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? "LighMode"
            : "DarkMode";

    return Scaffold(
        extendBody: true,
        floatingActionButton: index == 0
            ? ElevatedButton(
                child: IconButton(
                    onPressed: () async {
                      FocusScope.of(context).unfocus();
                      CreateNewForm(
                        title: 'Add New Form',
                        message: 'Title',
                        onPressed: () async {
                          Navigator.pop(context);
                          await provider.getTitle(context);
                        },
                        onEdit: provider.setFormTitle,
                      ).show(context);
                    },
                    icon: Icon(
                      Icons.plus_one_rounded,
                      color: Theme.of(context).iconTheme.color,
                    )),
                onPressed: null,
              )
            : null,
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: index,
          onTap: (index) => setState(() => this.index = index),
          items: items,
          backgroundColor: Colors.transparent,
          color: Theme.of(context).primaryColor,
        ),
        appBar: AppBar(
          iconTheme: Theme.of(context).iconTheme,
          title: Text(text),
          actions: [
            ChangeThemeButton(),
          ],
        ),
        body: index == 0
            ? Container(
                child: Center(child: Text('HomePage Nigga')),
              )
            : screens[index]);
  }

  _observeApiResult() {
    provider.formState.apiStream.stream.listen(
      (result) {
        // FocusScope.of(context).unfocus();
        switch (result.status) {
          case Status.loading:
            LoadingPopup(
              message: 'Updating Account...',
              dismiss: false,
            ).show(context);
            break;
          case Status.offline:
            context.displayOfflineSnackbar();
            break;
          case Status.error:
            Navigator.pop(context);
            context.displayErrorSnackbar(
              message: 'error',
            );
            break;
          case Status.completed:
            provider.getForm(result.data!);
            Navigator.pop(context);
            context.displaySuccessSnackbar(
              message: 'updating account sucess',
            );
            break;
          default:
            break;
        }
      },
    );
  }
}
