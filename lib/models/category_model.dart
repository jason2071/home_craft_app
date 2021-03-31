import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final Color color;
  final String imageSrc;
  final int amount;

  CategoryModel({this.id, this.title, this.color, this.imageSrc, this.amount});
}

List<CategoryModel> categories = [
  CategoryModel(
    id: "1",
    title: "Chairs",
    color: Color(0xFFF3F3F1),
    imageSrc: "assets/images/chair-300.png",
    amount: 1126,
  ),
  CategoryModel(
    id: "2",
    title: "Tables",
    color: Color(0xFFF4C670),
    imageSrc: "assets/images/tables-300.png",
    amount: 442,
  ),
  CategoryModel(
    id: "3",
    title: "Sofa",
    color: Color(0xFFF6F0F0),
    imageSrc: "assets/images/sofa-300.png",
    amount: 1865,
  ),
];
