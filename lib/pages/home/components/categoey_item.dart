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
        width: getProportionateScreenWidth(80),
        height: getProportionateScreenWidth(80),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        margin: EdgeInsets.only(right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageSrc,
              width: getProportionateScreenWidth(45),
              height: getProportionateScreenWidth(45),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
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
