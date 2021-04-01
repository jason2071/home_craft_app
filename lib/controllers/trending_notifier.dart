import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

class TrendingNotifier extends ChangeNotifier {
  List<ProductModel> _trending = [
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

  UnmodifiableListView<ProductModel> get trending =>
      UnmodifiableListView(_trending);

  addproductData(ProductModel data) {
    _trending.add(data);
    notifyListeners();
  }
}
