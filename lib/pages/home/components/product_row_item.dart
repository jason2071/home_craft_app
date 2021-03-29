import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';

import '../../../size_config.dart';

class ProductRowItem extends StatelessWidget {
  const ProductRowItem({
    Key key,
    this.onPressed,
    this.data,
  }) : super(key: key);

  final ProductModel data;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                data.cover,
                fit: BoxFit.cover,
                width: double.infinity,
                height: getProportionateScreenHeight(300),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.screenWidth * 0.83,
                    child: Text(
                      data.title,
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "\$${data.prize}",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(16),
                  fontWeight: FontWeight.w900,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
