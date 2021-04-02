import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title;
  final String detail;
  final int prize;
  final int amount;
  final String cover;
  final List<String> images;
  final bool isFavorite;

  ProductModel({
    @required this.id,
    @required this.title,
    this.detail,
    this.prize = 0,
    this.amount = 0,
    this.cover,
    this.images,
    this.isFavorite = false,
  });
}
