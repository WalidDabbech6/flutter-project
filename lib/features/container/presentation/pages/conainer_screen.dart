import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:marketplace_client_app/Theme/theme_provider.dart';
import 'package:marketplace_client_app/core/widgets/change_theme_button.dart';
import 'package:marketplace_client_app/features/account/presentation/pages/profile_screen.dart';
import 'package:provider/provider.dart';

class ConainerScreen extends StatefulWidget {
  const ConainerScreen({Key? key}) : super(key: key);

  @override
  State<ConainerScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ConainerScreen> {
  int index = 0;
  final screens = <Widget>[ConainerScreen(), ProfileScreen()];
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
      Icons.favorite,
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

  @override
  Widget build(BuildContext context) {
    final text =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? "LighMode"
            : "DarkMode";

    return Scaffold(
        extendBody: true,
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
}
