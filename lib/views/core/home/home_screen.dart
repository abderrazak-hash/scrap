import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/core/ads/ad_box.dart';
import 'package:scrap/views/core/home/home_controller.dart';
import 'package:scrap/widgets/scrap_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeController>(
      builder: (context, homeController, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    '$iconsPath/scrap.svg',
                    height: 55.0,
                    width: 120.0,
                    fit: BoxFit.contain,
                  ),
                  const Spacer(),
                  SvgPicture.asset('$iconsPath/notification.svg'),
                  const SizedBox(width: 20.0),
                ],
              ),
              const SizedBox(height: 10.0),
              ScrapInput(hintText: 'ابحث عن منتج'),
              const SizedBox(height: 10.0),
              SizedBox(
                height: 65.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          getIcon('all'),
                          color: white,
                        ),
                        const Text('الكل'),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              getIcon('car'),
                              color: grey,
                            ),
                            SvgPicture.asset(
                              getIcon('bike'),
                              color: grey,
                            ),
                            SvgPicture.asset(
                              getIcon('motorcycle'),
                              color: grey,
                            ),
                          ],
                        ),
                        const Text('سيارات'),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              getIcon('car_door'),
                              color: grey,
                            ),
                            SvgPicture.asset(
                              getIcon('car_parts'),
                              color: grey,
                            ),
                            SvgPicture.asset(
                              getIcon('wheel'),
                              color: grey,
                            ),
                          ],
                        ),
                        const Text('قطع مستعملة'),
                      ],
                    ),
                    const SizedBox(width: 20.0),
                    Column(
                      children: [
                        SvgPicture.asset(
                          getIcon('furniture'),
                          color: grey,
                        ),
                        const Text('أثاث'),
                      ],
                    ),
                  ]
                      .map((e) => e.runtimeType != SizedBox
                          ? InkWell(
                              onTap: () {},
                              child: Container(
                                  width: 100.0,
                                  padding: const EdgeInsets.all(7),
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: mainClr,
                                  ),
                                  child: e),
                            )
                          : e)
                      .toList(),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: const [
                  Text(
                    'للاستبدال',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'أدوات للبيع',
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'اﻷدوات المطلوبة',
                    textAlign: TextAlign.center,
                  ),
                ]
                    .map((e) => Expanded(
                          child: e,
                        ))
                    .toList(),
              ),
              const SizedBox(height: 15.0),
              Expanded(
                // height: 400.0,
                child: ListView.builder(
                    itemCount: homeController.ads.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            AdBox(
                              ad: homeController.ads[index],
                            ),
                            const Divider(),
                          ],
                        )),
              ),
            ],
          ),
        );
      },
    );
  }
}
