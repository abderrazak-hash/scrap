import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/scrap_nav_controller.dart';
import 'package:scrap/widgets/scrap_button.dart';

class ScrapNav extends StatelessWidget {
  const ScrapNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                child: navController.currentScreen,
              ),
              SizedBox(
                height: 60.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        navController.navigate(navController.screens['home']!);
                      },
                      child: SizedBox(
                        width: 35.0,
                        child: SvgPicture.asset(
                          '$iconsPath/home.svg',
                          color: navController.currentScreen ==
                                  navController.screens['home']!
                              ? mainClr
                              : black,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        navController.navigate(navController.screens['heart']!);
                      },
                      child: SizedBox(
                        width: 35.0,
                        child: SvgPicture.asset(
                          '$iconsPath/heart.svg',
                          color: navController.currentScreen ==
                                  navController.screens['heart']!
                              ? mainClr
                              : black,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: ScrapButton(
                        onPressed: () {
                          navController
                              .navigate(navController.screens['publishAd']!);
                        },
                        label: 'أعلن عن منتج',
                        height: 32.0,
                        width: 110.0,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        navController
                            .navigate(navController.screens['message']!);
                      },
                      child: SizedBox(
                        width: 35.0,
                        child: SvgPicture.asset(
                          '$iconsPath/notification.svg',
                          color: navController.currentScreen ==
                                  navController.screens['message']!
                              ? mainClr
                              : black,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        navController
                            .navigate(navController.screens['account']!);
                      },
                      child: SizedBox(
                        width: 35.0,
                        child: SvgPicture.asset(
                          '$iconsPath/account.svg',
                          color: navController.currentScreen ==
                                  navController.screens['account']!
                              ? mainClr
                              : black,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
