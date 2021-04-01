import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/category_model.dart';

class CategoryNotifier extends ChangeNotifier {
  List<CategoryModel> _categories = [
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

  UnmodifiableListView<CategoryModel> get categories =>
      UnmodifiableListView(_categories);

  addCategoryData(CategoryModel data) {
    _categories.add(data);
    notifyListeners();
  }
}
