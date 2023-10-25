import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/about/about_screen.dart';
import 'package:scrap/views/account/account_controller.dart';
import 'package:scrap/views/account/ads/ads_screen.dart';
import 'package:scrap/views/account/comments/comments_screen.dart';
import 'package:scrap/views/account/profile/profile_screen.dart';
import 'package:scrap/views/auth/login_screen.dart';
import 'package:scrap/views/scrap_nav_controller.dart';
import 'package:scrap/views/settings/settings_screen.dart';
import 'package:scrap/widgets/scrap_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AccountController>(
      builder: (context, accountController, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'ملفك',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 80.0,
                    child: Center(
                      child: Image.asset(
                        '$imagesPath/avatar.png',
                      ),
                    ),
                  ),
                  const Text(
                    'محمد نور',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text('muhammed_nour@gmail.com'),
                ],
              ),
              Column(
                children: [
                  option(
                      title: 'معلوماتك',
                      icon: 'user',
                      goTo: const ProfileScreen()),
                  option(
                      title: 'سكرابي', icon: 'scrappy', goTo: const Center()),
                  option(
                      title: 'إعلاناتك', icon: 'comment', goTo: const PersonalAdsScreen()),
                  option(
                      title: 'تعليقاتك',
                      icon: 'chat',
                      goTo: const CommentsScreen()),
                  option(
                      title: 'ضبط اﻹعدادات',
                      icon: 'setting',
                      goTo: const SettingScreen()),
                  option(
                      title: 'سياسة الخصوصية والشروط واﻷحكام',
                      icon: 'safety',
                      goTo: const AboutScreen()),
                ],
              ),
              // Spacer(),
              ScrapButton(
                onPressed: () {
                  Navigator.popUntil(
                      context, (route) => !Navigator.canPop(context));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                son: Container(
                  height: 40.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      'تسجيل الخروج',
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget option(
      {required String title, required String icon, required Widget goTo}) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: ListTile(
            leading: SvgPicture.asset(
              '$iconsPath/$icon.svg',
            ),
            title: Text(
              title,
              style: const TextStyle(
                fontSize: 15.0,
                color: grey,
              ),
            ),
            onTap: () {
              navController.navigate(goTo);
            },
          ),
        );
      },
    );
  }
}
