import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/scrap_nav_controller.dart';
import 'package:scrap/views/settings/settings_controller.dart';
import 'package:switcher/core/switcher_size.dart';
import 'package:switcher/switcher.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return Consumer<SettingsController>(
          builder: (context, profileController, child) {
            return Scaffold(
              body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 30, 25, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            navController
                                .navigate(navController.screens['account']!);
                          },
                          child: Transform.rotate(
                            angle: -pi / 2,
                            child: SvgPicture.asset(
                              getIcon('arraw'),
                              height: 25.0,
                            ),
                          ),
                        ),
                        const Text('ضبط اﻹعدادات'),
                        const SizedBox(width: 30.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25.0),
                  Column(
                    children: const [
                      SettingItem(
                        title: 'التعليقات',
                        description: 'اشعارك بوصول تعليق جديد',
                      ),
                      SettingItem(
                        title: 'اﻹعلانات',
                        description: 'عند ظهور تعليقات جديدة',
                      ),
                      SettingItem(
                        title: 'سكرابي',
                        description: 'عند اقتراب انتهاء مدة صلاحية سكرابي',
                      ),
                      SettingItem(
                        title: 'الرسائل',
                        description: 'عند تلقي رسائل جديدة',
                      ),
                      SettingItem(
                        title: 'المفضلة',
                        description: 'عند إضافة تعليق على إعلاناتك المفضلة',
                      ),
                      SettingItem(
                        title: 'إشعارات سكرابي',
                        description: 'عند تلقي إشعارات من تطبيق سكراب',
                      ),
                      SettingItem(
                        title: 'الوضع الليلي',
                        description: 'تغيير ألوان التطبيق إلى الوضع الليلي',
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class SettingItem extends StatefulWidget {
  final String title, description;
  const SettingItem({Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  State<SettingItem> createState() => _SettingItemState();
}

class _SettingItemState extends State<SettingItem> {
  bool val = false;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.description),
        trailing: Directionality(
          textDirection: TextDirection.ltr,
          child: Switcher(
            value: false,
            size: SwitcherSize.medium,
            switcherButtonRadius: 50,
            enabledSwitcherButtonRotate: true,
            iconOff: Icons.check,
            iconOn: Icons.close,
            colorOff: mainClr,
            colorOn: mainClr,
            switcherButtonColor: white,
            onChanged: (bool state) {
              //
            },
          ),
        ),
      ),
    );
  }
}
