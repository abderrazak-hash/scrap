import 'package:flutter/cupertino.dart';
import 'package:scrap/models/ad.dart';

class FavoriteController extends ChangeNotifier {
  late List<Ad> ads;

  FavoriteController() {
    ads = [
      Ad(
        title: 'سيارة كيا سيفيا',
        description: '',
        publisher: 'Mohammed',
        price: 350,
        image: 'kia',
      ),
      Ad(
        title: 'كنب نوع إيطالي للبيع',
        description: '',
        publisher: 'Abderrazak',
        price: 150,
        image: 'table',
      ),
      Ad(
        title: 'سيارة كيا سيفيا',
        description: '',
        publisher: 'Mohammed',
        price: 350,
        image: 'kia',
      ),
    ];
  }
}
