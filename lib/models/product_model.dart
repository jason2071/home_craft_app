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
    title: "Sofa",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 19720,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/48/d9/cf/48d9cf66f2178ea9dc86c16ac7e75baf.jpg",
    images: [
      "https://i.pinimg.com/564x/1b/b6/78/1bb678b6ad9e574aa3306cfbe73df3b7.jpg",
      "https://i.pinimg.com/564x/7c/3a/66/7c3a66f3b61faa4cbd41b29db01d470b.jpg",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF664429),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "2",
    title: "Bed",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 29990,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/7a/09/ca/7a09cae99846a0348f69c2f1f2a539ce.jpg",
    images: [
      "https://i.pinimg.com/564x/fa/a3/0b/faa30b74db4674ec9371a54fd5c33134.jpg",
      "https://i.pinimg.com/736x/9b/07/00/9b0700ee0238aac13374227896605f4d.jpg",
    ],
    colors: [
      Color(0xFF664429),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "3",
    title: "Bathroom",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 34200,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/68/ab/2f/68ab2fb48cabc6f5095294474ac03ff3.jpg",
    images: [
      "https://i.pinimg.com/564x/fc/90/62/fc90622d26e4b8101f4c6b98abfce23e.jpg",
      "https://i.pinimg.com/564x/f6/9c/8d/f69c8dc4df6c8e6c8e81ebbdd20763fa.jpg",
    ],
    colors: [
      Color(0xFF664429),
    ],
  ),
  ProductModel(
    id: "4",
    title: "Brick Wall Room",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 19720,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/13/26/48/132648cdf788c38a3f454e56ab3185b8.jpg",
    images: [
      "https://i.pinimg.com/564x/32/2d/e6/322de67dd7ca99f4606e9ba241c2e198.jpg",
      "https://i.pinimg.com/564x/98/fe/ab/98feabf17e0e0b733b7f4aa3a65cec0d.jpg",
    ],
    colors: [
      Color(0xFFD2B99B),
      Color(0xFF2C130E),
    ],
  ),
  ProductModel(
    id: "5",
    title: "kitchen",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 19720,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/9d/4d/75/9d4d75304e0bd778cc26d73a7da79a78.jpg",
    images: [
      "https://i.pinimg.com/564x/ca/eb/bf/caebbf003ce4adf19fbe1829f6ee0f3c.jpg",
      "https://i.pinimg.com/564x/ce/57/cf/ce57cf8f3854e1dd1fd72c89d0093d43.jpg",
    ],
    colors: [],
  ),
  ProductModel(
    id: "6",
    title: "Graden",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 19720,
    amount: 50,
    cover:
        "https://i.pinimg.com/564x/bf/f6/5c/bff65ce468bd42f06bfa324267bf509c.jpg",
    images: [
      "https://i.pinimg.com/564x/ba/39/bf/ba39bf24ff7125ba1f0ff87c567c2499.jpg",
      "https://i.pinimg.com/564x/7e/db/e5/7edbe54d9c13260b9e7f85f8d0696a9d.jpg",
    ],
    colors: [],
  ),
];
