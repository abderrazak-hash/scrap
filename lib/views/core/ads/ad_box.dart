import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/models/ad.dart';
import 'package:scrap/views/core/ads/view_ad_screen.dart';
import 'package:scrap/views/scrap_nav_controller.dart';

class AdBox extends StatelessWidget {
  final Ad ad;
  const AdBox({
    Key? key,
    required this.ad,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<NavController>(builder: (context, navController, child) {
      return InkWell(
        onTap: () {
          navController.navigate(ViewAdScreen(ad: ad));
        },
        child: SizedBox(
          height: 140.0,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Text(
                            '${ad.price} \$',
                            style: const TextStyle(
                              fontSize: 15.0,
                              color: mainClr,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                SvgPicture.asset(getIcon('calendar')),
                                const Text('اﻵن'),
                              ],
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Column(
                              children: [
                                SvgPicture.asset(getIcon('bosla')),
                                const Text('أربد'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            ad.title,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              ad.publisher,
                              style: const TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SvgPicture.asset('$iconsPath/account.svg'),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'للبيع',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            SvgPicture.asset(getIcon('sale')),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 5.0),
                height: 140.0,
                width: 140.0,
                child: Stack(
                  children: [
                    Center(
                      child: Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        height: 140.0,
                        width: 140.0,
                        child: Image.asset(
                          '$imagesPath/${ad.image}.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7.0,
                      right: 7.0,
                      child: InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          radius: 17,
                          backgroundColor: mainClr.withOpacity(.4),
                          child: SvgPicture.asset(
                            getIcon('heart'),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
