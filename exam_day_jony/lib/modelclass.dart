import 'package:flutter/material.dart';

class ProductsInfo {
  String? name;
  var price;
  String? img;

  ProductsInfo(this.name, this.price, this.img);

  static List<ProductsInfo> Products = [
    ProductsInfo('This is headphone', '\$999', 'images/image1.jpg'),
    ProductsInfo('This is  china headphone', '\$559', 'images/images2.jpg'),
    ProductsInfo('Samsung', 550, 'images/images3.jpg'),
    ProductsInfo('RR', 999, 'images/images4.jpg'),
  ];
}
