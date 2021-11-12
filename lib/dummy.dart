import 'models/plants.dart';

import 'models/categories_plants.dart';

const DUMMY_categories = const [
  CatogriesPlants(
    id: 'a1',
    title: 'Samantha',
    country: 'russia',
    image: 'assets/images/image_1.png',
    price: 440,
  ),
  CatogriesPlants(
    id: 'a2',
    title: 'Samantha1',
    country: 'russia1',
    image: 'assets/images/image_2.png',
    price: 500,
  ),
  CatogriesPlants(
    id: 'a3',
    title: 'Samantha1',
    country: 'russia5',
    image: 'assets/images/image_3.png',
    price: 600,
  ),
];
const DUMMY_PLANTS = const [
  Plants(
    id: 'b1',
    title: 'Samantha',
    country: 'russia',
    image: 'assets/images/image_1.png',
    price: 440,
    categories: [' a1 '],
  ),
  Plants(
    id: 'b2',
    title: 'Samantha1',
    country: 'russia1',
    image: 'assets/images/image_2.png',
    price: 500,
    categories: [' a2 '],
  ),
  Plants(
    id: 'b3',
    title: 'Samantha1',
    country: 'russia5',
    image: 'assets/images/image_3.png',
    price: 600,
    categories: [' a3 '],
  ),
];
