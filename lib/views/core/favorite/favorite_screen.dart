import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scrap/constants.dart';
import 'package:scrap/views/core/ads/ad_box.dart';
import 'package:scrap/views/core/favorite/favorite_controller.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteController>(
      builder: (context, favoriteController, child) {
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
              const SizedBox(height: 15.0),
              const Center(
                child: Text(
                  'المفضلة',
                  style: TextStyle(
                    color: mainClr,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 25.0),
              Expanded(
                child: ListView.builder(
                  itemCount: favoriteController.ads.length,
                  itemBuilder: (context, index) => Column(
                    children: [
                      AdBox(
                        ad: favoriteController.ads[index],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
