import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

class NewArrivalNotifier extends ChangeNotifier {
  List<ProductModel> _newArrivals = [
    ProductModel(
      id: 1,
      title: "Allmodern",
      detail:
          "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      prize: 300,
      amount: 10,
      cover: "assets/images/chair/allmodern.png",
    ),
    ProductModel(
      id: 2,
      title: "Living Spaces",
      detail:
          "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      prize: 495,
      amount: 8,
      cover: "assets/images/sofa/living_spaces_495.png",
      images: [],
    ),
    ProductModel(
      id: 3,
      title: "Urban Outfitters",
      detail:
          "Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      prize: 299,
      amount: 9,
      cover: "assets/images/table/urban_outfitters_299.png",
      images: [],
    ),
  ];

  UnmodifiableListView<ProductModel> get newArrivals =>
      UnmodifiableListView(_newArrivals);

  addproductData(ProductModel data) {
    _newArrivals.add(data);
    notifyListeners();
  }
}
