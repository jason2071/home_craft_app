import 'package:flutter/material.dart';
import 'package:home_craft_app/models/product_model.dart';
import 'package:home_craft_app/pages/detail/detail_screen.dart';

import 'product_item.dart';

class GridList extends StatelessWidget {
  const GridList({
    Key key,
    this.data,
  }) : super(key: key);

  final List<ProductModel> data;

  void _switchPage(BuildContext context) {
    Navigator.pushNamed(context, DetailScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              ...List.generate(
                data.length,
                (index) {
                  return (index % 2 == 0)
                      ? ProductItem(
                          imageSrc: data[index].cover,
                          title: data[index].title,
                          prize: data[index].prize.toString(),
                          onPressed: () {
                            _switchPage(context);
                          },
                        )
                      : Container();
                },
              ),
            ],
          ),
          SizedBox(width: 6),
          Column(
            children: [
              ...List.generate(
                data.length,
                (index) {
                  return (index % 2 == 1)
                      ? ProductItem(
                          imageSrc: data[index].cover,
                          title: data[index].title,
                          prize: data[index].prize.toString(),
                          onPressed: () {
                            _switchPage(context);
                          },
                        )
                      : Container();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
