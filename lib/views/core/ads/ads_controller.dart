import 'package:flutter/foundation.dart';
import 'package:scrap/models/ad.dart';

class AdsController extends ChangeNotifier {
  late List<Ad> ads;

  AdsController() {
    ads = [];
  }
}
