import 'package:flutter/material.dart';

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
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Image.asset(
              imageSrc,
              width: 80,
              height: 80,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                height: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
