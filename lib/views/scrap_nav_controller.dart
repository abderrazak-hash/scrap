import 'package:flutter/widgets.dart';
import 'package:scrap/views/account/account_screen.dart';
import 'package:scrap/views/core/ads/publish_ad_screen.dart';
import 'package:scrap/views/core/favorite/favorite_screen.dart';
import 'package:scrap/views/core/home/home_screen.dart';
import 'package:scrap/views/core/notifications/notifications_screen.dart';

class NavController extends ChangeNotifier {
  late Map<String, Widget> screens;
  late Widget currentScreen;

  NavController() {
    screens = {
      'home': const HomeScreen(),
      'heart': const FavoriteScreen(),
      'publishAd': const PublishAdScreen(),
      'message': const NotificationsScreen(),
      'account': const AccountScreen(),
    };
    currentScreen = screens['home']!;
  }

  void navigate(Widget screen) {
    currentScreen = screen;
    notifyListeners();
  }
}
