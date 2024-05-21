import 'package:flutter/cupertino.dart';

class Pizza {
  int id;
  String name, imagepath, rating;
  double price;

  Pizza(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagepath,
      required this.rating});

  int get _id => id;
  String get _name => name;
  double get _price => price;
  String get _imagepath => imagepath;
  String get _rating => rating;
}
// https://www.dominos.ma/fr/pages/order/menu#!/menu/category/entrees/ 