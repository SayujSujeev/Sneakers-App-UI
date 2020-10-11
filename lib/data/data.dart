

import 'package:sneker_app_ui/models/sneaker.dart';

//Sneakers data
final _sneker1 = Sneaker(
  imageUrl: 'assets/images/2.png',
  firstName: 'Yeezy',
  secondName: 'Boost',
  details: 'Mens SZ 11 -AA3834 101',
  price: 299,
);

final _sneker2 = Sneaker(
  imageUrl: 'assets/images/1.png',
  firstName: 'Satin',
  secondName: 'Shatter',
  details: 'Mens SZ 10 -AA3840 102',
  price: 349,
);

final _sneker3 = Sneaker(
  imageUrl: 'assets/images/3.png',
  firstName: 'Air',
  secondName: 'Boost',
  details: 'Mens SZ 12 -AA3862 103',
  price: 249,
);

final _sneker4 = Sneaker(
  imageUrl: 'assets/images/4.png',
  firstName: 'Air',
  secondName: 'Jordan',
  details: 'Uni SZ 09 -AA3865 104',
  price: 449,
);

final _sneker5 = Sneaker(
  imageUrl: 'assets/images/5.png',
  firstName: 'Boost',
  secondName: 'Lightning',
  details: 'Uni SZ 09 -AA3875 105',
  price: 399,
);

final List<Sneaker> exploreProducts = [
  _sneker1,
  _sneker2,
  _sneker3,
  _sneker4,
  _sneker5,
];

final List<Sneaker> popularProducts = [
  _sneker5,
  _sneker1,
  _sneker3,
];

final List<Sneaker> similarProducts = [

  _sneker3,
  _sneker2,
  _sneker4,
  _sneker1,
  _sneker5,
];