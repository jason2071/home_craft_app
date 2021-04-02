import 'package:flutter/material.dart';
import 'package:home_craft_app/size_config.dart';

class TitleShowAll extends StatelessWidget {
  const TitleShowAll({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              fontWeight: FontWeight.w700,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: onPressed,
            child: Text(
              "Show all",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Icon(
            Icons.arrow_right,
            size: 26,
          ),
        ],
      ),
    );
  }
}
