import 'package:flutter/material.dart';
import 'package:home_craft_app/pages/home/components/product_row_item.dart';

class RowList extends StatelessWidget {
  const RowList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductRowItem(
              imageSrc: "assets/images/furniture/minimal-923194_1920.jpeg",
              title: "ชุดโต๊ะอาหาร Lamoon W150 - เก้าอี้Waku 150 X 80 X 75 Cm",
              prize: "19,720",
              onPressed: () {},
            ),
            ProductRowItem(
              imageSrc: "assets/images/furniture/minimal-923194_1920.jpeg",
              title: "ชุดโต๊ะอาหาร Lamoon W150 - เก้าอี้Waku 150 X 80 X 75 Cm",
              prize: "19,720",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
