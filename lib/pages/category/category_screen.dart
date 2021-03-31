import 'package:flutter/material.dart';
import 'package:home_craft_app/controllers/category_controller.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Text(context.watch<CategoryController>().category.title),
      ),
    );
  }
}
