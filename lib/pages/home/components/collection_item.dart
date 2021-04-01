import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class CollectionItem extends StatelessWidget {
  const CollectionItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: SizeConfig.screenWidth * 0.8,
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        children: [
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(
                  "Collection",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "New Arrivals Winter",
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: getProportionateScreenWidth(65),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "shop now".toUpperCase(),
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(Icons.arrow_right, size: 15),
                        ],
                      ),
                      Divider(
                        height: 0,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          Image.asset("assets/images/target.png")
        ],
      ),
    );
  }
}
