import 'package:flutter/cupertino.dart';

class Plants {
  final String id;
  final String title;
  final String country;
  final String image;
  final int price;
  final List<String> categories;

  const Plants({
    required this.country,
    required this.price,
    required this.id,
    required this.title,
    required this.image,
    required this.categories,
  });
}
