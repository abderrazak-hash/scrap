import 'package:flutter/material.dart';
import 'package:scrap/views/scrap_nav.dart';

class RegisterController extends ChangeNotifier {
  void register(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ScrapNav(),
      ),
    );
  }
}
