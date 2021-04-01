import 'package:flutter/material.dart';
import 'package:home_craft_app/components/default_button.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TrendItem extends StatelessWidget {
  const TrendItem({
    Key key,
    this.imageSrc,
    this.title,
    this.prize,
    this.onPressed,
  }) : super(key: key);

  final String imageSrc;
  final String title;
  final String prize;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      height: 130,
      child: Row(
        children: [
          SizedBox(width: 20),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(imageSrc),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              constraints: BoxConstraints(
                                maxWidth: getProportionateScreenWidth(160),
                              ),
                              child: Text(
                                title,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: getProportionateScreenWidth(17),
                                ),
                              ),
                            ),
                            Text(
                              "\$$prize",
                              style: TextStyle(
                                color: Colors.grey,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        DefaultButton(
                          title: "Shop",
                          onPressed: onPressed,
                        ),
                        SizedBox(width: 20),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Divider(
                    height: 0,
                    thickness: 1.5,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
