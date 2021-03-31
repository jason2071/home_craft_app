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
    cover: "https://picsum.photos/500",
    images: [
      "https://picsum.photos/768/1024",
      "https://picsum.photos/1024/768",
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
    cover: "https://picsum.photos/768",
    images: [
      "https://picsum.photos/768",
      "https://picsum.photos/768",
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
    cover: "https://picsum.photos/768/1024",
    images: [
      "https://picsum.photos/1024/768",
      "https://picsum.photos/1024/768",
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
    cover: "https://picsum.photos/1024",
    images: [
      "https://picsum.photos/1024",
      "https://picsum.photos/1024",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "5",
    title: "Apartment Room, Interior Design",
    detail: "Bedroom Bed Apartment Room Interior Design",
    prize: 19720,
    amount: 50,
    cover: "https://picsum.photos/600",
    images: [
      "https://picsum.photos/768/1024",
      "https://picsum.photos/1024/768",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF664429),
      Color(0xFF2C130E),
    ],
  ),
];
