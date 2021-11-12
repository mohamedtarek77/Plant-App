import 'package:flutter/foundation.dart';

class CatogriesPlants {
  final String id;
  final String title;
  final String country;
  final String image;
  final int price;

  const CatogriesPlants({
    required this.country,
    required this.price,
    required this.id,
    required this.title,
    required this.image,
  });
}
