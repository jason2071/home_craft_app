import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title;
  final String detail;
  final int prize;
  final int amount;
  final String cover;
  final List<String> images;

  ProductModel({
    @required this.id,
    @required this.title,
    this.detail,
    this.prize = 0,
    this.amount = 0,
    this.cover,
    this.images,
  });
}

List<ProductModel> productList = [
  ProductModel(
    id: 1,
    title: "Target",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 300,
    amount: 10,
    cover: "assets/images/target_300.png",
  ),
  ProductModel(
    id: 2,
    title: "Urban outfitters",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 299,
    amount: 8,
    cover: "assets/images/urban_outfitters.png",
    images: [],
  ),
  ProductModel(
    id: 3,
    title: "West elm",
    detail:
        "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    prize: 150,
    amount: 9,
    cover: "assets/images/west_elm.png",
    images: [],
  ),
];
