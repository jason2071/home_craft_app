import 'package:flutter/material.dart';
import 'package:home_craft_app/pages/category/components/body.dart';
import 'package:home_craft_app/size_config.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: false,
      body: Body(),
    );
  }
}
