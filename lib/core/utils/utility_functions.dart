import 'dart:io';

import 'package:url_launcher/url_launcher.dart';

Future<bool> verifyConnection() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

launchCaller(String phoneNumber) async {
  String url = "tel:$phoneNumber";
  if (await canLaunch(url)) {
    await launch(url);
  }
}
