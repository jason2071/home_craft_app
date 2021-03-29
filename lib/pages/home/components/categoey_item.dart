import 'package:flutter/material.dart';
import 'package:home_craft_app/size_config.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    this.imageSrc,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final String imageSrc, title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: [
            Image.asset(
              imageSrc,
              width: 50,
              height: 50,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(12),
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
