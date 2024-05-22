import 'package:flutter/cupertino.dart';

class Pizza {
  int id;
  String name, imagepath, rating, desc;
  double price;

  Pizza(
      {required this.id,
      required this.name,
      required this.price,
      required this.imagepath,
      required this.desc,
      required this.rating});

  int get _id => id;
  String get _name => name;
  double get _price => price;
  String get _imagepath => imagepath;
  String get _rating => rating;
  String get _desc => desc;
}
// https://www.dominos.ma/fr/pages/order/menu#!/menu/category/entrees/ 