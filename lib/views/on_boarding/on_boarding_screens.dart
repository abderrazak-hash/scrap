import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/auth/login_screen.dart';
import 'package:scrap/views/on_boarding/on_boarding_controller.dart';
import 'package:scrap/widgets/scrap_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<OnBoardingController>(
        builder: (context, onBoardingController, child) {
      return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            bottom: 110.0,
          ),
          child: PageView(
            onPageChanged: (index) {
              onBoardingController.changeI(index);
            },
            controller: onBoardingController.controller,
            reverse: true,
            children: [
              //! Page 01
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('$imagesPath/on_boarding1.png'),
                    const SizedBox(height: 15.0),
                    const Text(
                      'يمكنك اﻵن بيع، شراء واستبدال أدواتك المستعملة مجانا على منصة سكراب',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('$imagesPath/on_boarding2.png'),
                    const SizedBox(height: 15.0),
                    const Text(
                      'تستطيع المراسلة ورؤية المفضلة ونشر إعلان ﻷدواتك المستعملة من خلال الضغط على أحد اﻷزرار التي تكون باﻷسفل',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('$imagesPath/on_boarding3.png'),
                    const SizedBox(height: 15.0),
                    const Text(
                      'استكشف أفضل الخدمات ﻷدواتك المستعملة حسب متطلباتك واختياراتك',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          padding: const EdgeInsets.all(15.0),
          height: 130.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SmoothPageIndicator(
                controller: onBoardingController.controller,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: mainClr,
                  dotColor: greyish,
                ),
                onDotClicked: (index) {
                  onBoardingController.goPage(index);
                },
                textDirection: TextDirection.rtl,
              ),
              onBoardingController.i != 2
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            onBoardingController.nextPage();
                          },
                          child: Container(
                            height: 56.0,
                            width: 56.0,
                            padding: const EdgeInsets.only(left: 6.5),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: mainClr,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            onBoardingController.goPage(2);
                          },
                          child: const Text('تخطي'),
                        ),
                      ],
                    )
                  : ScrapButton(
                      label: 'ابدأ',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      height: 56.0,
                    ),
            ],
          ),
        ),
      );
    });
  }
}
