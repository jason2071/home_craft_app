import 'package:flutter/material.dart';

import '../../../size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    this.imageSrc,
    this.title,
    this.amount,
    this.color,
  }) : super(key: key);

  final String imageSrc, title;
  final int amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: getProportionateScreenWidth(120),
            height: getProportionateScreenHeight(200),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imageSrc,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "$amount items",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
