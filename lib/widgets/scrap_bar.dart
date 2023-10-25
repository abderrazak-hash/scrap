import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/scrap_nav_controller.dart';

class ScrapBar extends StatelessWidget {
  final String title, left, right;
  final Widget backTo;
  final Function onRight;

  const ScrapBar(
      {Key? key,
      required this.title,
      required this.left,
      required this.right,
      required this.onRight,
      required this.backTo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(
      builder: (context, navController, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  navController.navigate(backTo);
                },
                child: Transform.rotate(
                  angle: -pi / 2,
                  child: SvgPicture.asset(
                    getIcon(left),
                    height: 25.0,
                  ),
                ),
              ),
              Text(title),
              InkWell(
                onTap: () {
                  onRight;
                },
                child: SvgPicture.asset(
                  getIcon(right),
                  height: 25.0,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
