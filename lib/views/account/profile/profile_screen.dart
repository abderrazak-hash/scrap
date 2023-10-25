import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/account/profile/profile_controller.dart';
import 'package:scrap/views/scrap_nav_controller.dart';
import 'package:scrap/widgets/scrap_button.dart';
import 'package:scrap/widgets/scrap_input.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(builder: (context, navController, child) {
      return Consumer<ProfileController>(
        builder: (context, profileController, child) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
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
                      const Text('معلوماتك'),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          getIcon('pan'),
                          height: 25.0,
                        ),
                      ),
                    ],
                  ),
                  ScrapInput(hintText: 'أحمد حافظ عوير'),
                  // const Text('أحمد حافظ عوير'),
                  ScrapInput(hintText: 'ahmed_hafid@gmail.com'),
                  // const Text('ahmed_hafid@gmail.com'),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            getIcon('jordan'),
                            height: 30.0,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text('0754863215'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Switch(
                            value: false,
                            onChanged: (value) {},
                          ),
                          const Text('رؤية رقم هاتفي'),
                        ],
                      ),
                    ],
                  ),

                  const Text('المعلومات في اﻷسفل أدناه لا تظهر ﻷي أحد'),
                  Row(
                    children: [
                      const Spacer(),
                      Radio(
                        value: false,
                        groupValue: 'sex',
                        onChanged: (value) {},
                      ),
                      const Text('أنثى'),
                      const Spacer(),
                      Radio(
                        value: false,
                        groupValue: 'sex',
                        onChanged: (value) {},
                      ),
                      const Text('ذكر'),
                      const Spacer(),
                      const Text('الجنس'),
                      const Spacer(),
                    ],
                  ),
                  Column(
                    children: [
                      const Text('المهنة'),
                      const SizedBox(height: 8.0),
                      ScrapInput(hintText: 'مثال: حرفي'),
                    ],
                  ),
                  ScrapButton(
                    label: 'تأكيد',
                    onPressed: () {
                      navController.navigate(navController.screens['account']!);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }
}
