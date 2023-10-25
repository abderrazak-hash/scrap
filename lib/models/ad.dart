// ignore_for_file: constant_identifier_names

class Ad {
  late String title, description, publisher, image;
  late double price;

  Ad(
      {required this.title,
      required this.description,
      required this.publisher,
      required this.price,
      required this.image});
}

enum Sale {
  Change,
  Pay,
}
