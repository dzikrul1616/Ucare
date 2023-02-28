import 'package:flutter/material.dart';

class ContentProduct {
  @required String image;
  @required String title;
  @required int price;
  @required String content;

  ContentProduct(this.image, this.title, this.price, this.content);
}
