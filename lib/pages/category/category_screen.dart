import 'package:flutter/material.dart';
import 'package:home_craft_app/controllers/category_controller.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    CategoryController categoryController =
        Provider.of<CategoryController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryController.category.title),
      ),
      body: Container(
        child: Text(categoryController.category.title),
      ),
    );
  }
}
