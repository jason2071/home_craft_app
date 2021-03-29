import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';
import 'package:home_craft_app/pages/home/components/product_row_item.dart';

class RowList extends StatelessWidget {
  const RowList({Key key, this.data}) : super(key: key);

  final List<ProductModel> data;

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
            ...List.generate(
              data.length,
              (index) => ProductRowItem(
                data: data[index],
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
