import 'package:flutter/material.dart';
import 'package:home_craft_app/models/category_model.dart';

class CategoryController extends ChangeNotifier {
  CategoryModel _category;

  CategoryModel get category => _category;

  activeCategoryData(CategoryModel data) {
    _category = data;
  }
}
