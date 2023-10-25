import 'package:flutter/material.dart';
import 'package:scrap/views/scrap_nav.dart';

class LoginController extends ChangeNotifier {
  bool rememberMe = false;

  void checkRememberME(bool value) {
    rememberMe = value;
    notifyListeners();
  }

  void login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ScrapNav(),
      ),
    );
  }
}
