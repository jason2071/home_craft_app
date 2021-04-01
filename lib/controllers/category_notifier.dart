import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/category_model.dart';

class CategoryNotifier extends ChangeNotifier {
  List<CategoryModel> _categories;

  UnmodifiableListView<CategoryModel> get categories =>
      UnmodifiableListView(_categories);

  activeCategoryData(CategoryModel data) {
    _categories.add(data);
    notifyListeners();
  }
}
