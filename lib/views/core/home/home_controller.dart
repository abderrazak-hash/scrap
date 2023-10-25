import 'package:flutter/cupertino.dart';
import 'package:scrap/models/ad.dart';
import 'package:scrap/models/post.dart';

import 'package:http/http.dart' as http;

class HomeController extends ChangeNotifier {
  late List<Post> posts;

  void initPosts() async {
    posts = [];

    posts = await getPosts();

    posts = [];
  }

  final urlProduct = 'http://localhost:4500/scrap_api/api/v1/categories';
  Future<List<Post>> getPosts() async {
    final response = await http.post(Uri.parse(urlProduct), body: {});
    if (response.statusCode == 200) {
      // final responseBody = json.decode(response.body);
      // var data = responseBody['posts'];
      // for (var post in data) {
      //   posts.add(Post.fromJson(post));
      // }
    }
    // print(posts);
    return posts;
  }

  late List<Ad> ads;

  HomeController() {
    ads = [
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
    initPosts();
  }
}
