import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/scrap_nav_controller.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
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
                      const Text('تعليقاتك'),
                      InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          getIcon('trash'),
                          height: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 80.0,
                  color: mainClr.withOpacity(0.25),
                  child: const Center(
                    child: Text('لا يوجد لديك تعليقات'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
