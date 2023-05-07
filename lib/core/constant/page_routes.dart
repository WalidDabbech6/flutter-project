import 'package:flutter/cupertino.dart';
import 'package:marketplace_client_app/features/form/presentation/pages/form_details_screen.dart';

const String loginPageRoute = '/loginScreenRoute';
const String containerPageRoute = '/containerPageRoute';
const String detailCommandePageRoute = '/detailCommandePageRoute';
const String mapNavigationPageRoute = '/mapNavigationPageRoute';
const String orderResultPageRoute = '/orderResultPageRoute';

const String detailFormPageRoute = '/detailFormPageRoute';

Map<String, Widget Function(BuildContext)> appRoutes = {
  detailFormPageRoute: (context) => const FormDetailScreen(),
};
