import 'package:flutter/material.dart';

class ProductModel {
  final String id;
  final String title;
  final String detail;
  final int prize;
  final int amount;
  final String cover;
  final List<String> images;
  final List<Color> colors;

  ProductModel({
    this.id,
    this.title,
    this.detail,
    this.prize,
    this.amount,
    this.cover,
    this.images,
    this.colors,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: "1",
    title: "Apartment Room, Interior Design",
    detail: "Bedroom Bed Apartment Room Interior Design",
    prize: 19720,
    amount: 50,
    cover:
        "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_960_720.jpg",
    images: [
      "https://cdn.pixabay.com/photo/2014/08/11/21/40/bedroom-416062_960_720.jpg",
      "https://cdn.pixabay.com/photo/2014/07/10/17/17/bedroom-389254_960_720.jpg",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF664429),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "2",
    title: "Business Desk",
    detail: "Office Sitting Room Executive Business Desk",
    prize: 29990,
    amount: 50,
    cover:
        "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
    images: [
      "https://cdn.pixabay.com/photo/2015/10/20/18/57/furniture-998265_960_720.jpg",
      "https://cdn.pixabay.com/photo/2015/04/20/06/46/office-730681_960_720.jpg",
    ],
    colors: [
      Color(0xFF664429),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "3",
    title: "Kitchen Home",
    detail: "Kitchen Home Interior Modern Room Floor Furniture",
    prize: 34200,
    amount: 50,
    cover:
        "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
    images: [
      "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg",
      "https://cdn.pixabay.com/photo/2016/12/26/17/28/food-1932466_960_720.jpg",
    ],
    colors: [
      Color(0xFF664429),
    ],
  ),
  ProductModel(
    id: "4",
    title: "Brick Wall Room",
    detail: "Brick Wall Room Interior Design Furniture",
    prize: 19720,
    amount: 50,
    cover:
        "https://cdn.pixabay.com/photo/2016/11/22/19/11/brick-wall-1850095_960_720.jpg",
    images: [
      "https://cdn.pixabay.com/photo/2016/11/22/19/11/brick-wall-1850095_960_720.jpg",
      "https://cdn.pixabay.com/photo/2014/08/11/21/39/wall-416060_960_720.jpg",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF2C130E),
    ],
  ),
];
