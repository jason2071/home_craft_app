import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

import '../constants.dart';
import '../size_config.dart';

class HorizontalItem extends StatelessWidget {
  const HorizontalItem({
    Key key,
    this.product,
  }) : super(key: key);

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: getProportionateScreenWidth(150),
          height: getProportionateScreenWidth(180),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: kProductBackgroundColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                right: 10,
                child: Icon(Icons.favorite_border),
              ),
              Positioned(
                top: 10,
                bottom: 0,
                left: 0,
                right: 0,
                child: Image.asset(product.cover),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        SizedBox(
          width: getProportionateScreenWidth(150),
          child: Text(
            product.title,
            maxLines: 1,
            overflow: TextOverflow.clip,
            style: TextStyle(
              fontSize: getProportionateScreenHeight(16),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(150),
          child: Text(
            "\$${product.prize}",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
