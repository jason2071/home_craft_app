import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

import 'product_item.dart';

class GridList extends StatelessWidget {
  const GridList({
    Key key,
    this.data,
  }) : super(key: key);

  final List<ProductModel> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ProductItem(
                imageSrc: "assets/images/furniture/minimal-923194_1920.jpeg",
                title: "Title",
                prize: "1,000",
                onPressed: () {},
              ),
              ProductItem(
                imageSrc: "assets/images/furniture/workplace-5517744_1920.jpeg",
                title: "Title",
                prize: "1,000",
                onPressed: () {},
              )
            ],
          ),
          SizedBox(width: 6),
          Column(
            children: [
              ProductItem(
                imageSrc: "assets/images/furniture/workplace-5517744_1920.jpeg",
                title: "loremsamfwbrebgnbgwrnpmdfb;msdfnbebnreihnfbnfdibnin",
                prize: "1,000",
                onPressed: () {},
              ),
              ProductItem(
                imageSrc: "assets/images/furniture/minimal-923194_1920.jpeg",
                title: "Title",
                prize: "1,000",
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
