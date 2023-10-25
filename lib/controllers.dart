import 'package:provider/provider.dart';
import 'package:scrap/views/account/account_controller.dart';
import 'package:scrap/views/account/profile/profile_controller.dart';
import 'package:scrap/views/auth/login_controller.dart';
import 'package:scrap/views/auth/register_controller.dart';
import 'package:scrap/views/core/ads/ads_controller.dart';
import 'package:scrap/views/core/favorite/favorite_controller.dart';
import 'package:scrap/views/core/home/home_controller.dart';
import 'package:scrap/views/core/messages/messages_controller.dart';
import 'package:scrap/views/on_boarding/on_boarding_controller.dart';
import 'package:scrap/views/scrap_nav_controller.dart';
import 'package:scrap/views/settings/settings_controller.dart';

List<ChangeNotifierProvider> controllers = [
  ChangeNotifierProvider<OnBoardingController>(
    create: (context) => OnBoardingController(),
  ),
  ChangeNotifierProvider<LoginController>(
    create: (context) => LoginController(),
  ),
  ChangeNotifierProvider<RegisterController>(
    create: (context) => RegisterController(),
  ),
  ChangeNotifierProvider<NavController>(
    create: (context) => NavController(),
  ),
  ChangeNotifierProvider<HomeController>(
    create: (context) => HomeController(),
  ),
  ChangeNotifierProvider<FavoriteController>(
    create: (context) => FavoriteController(),
  ),
  ChangeNotifierProvider<MessagesController>(
    create: (context) => MessagesController(),
  ),
  ChangeNotifierProvider<AccountController>(
    create: (context) => AccountController(),
  ),
  ChangeNotifierProvider<AdsController>(
    create: (context) => AdsController(),
  ),
  ChangeNotifierProvider<ProfileController>(
    create: (context) => ProfileController(),
  ),
  ChangeNotifierProvider<SettingsController>(
    create: (context) => SettingsController(),
  ),
];
