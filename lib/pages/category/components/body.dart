import 'package:flutter/material.dart';
import 'package:home_craft_app/controllers/category_notifier.dart';
import 'package:home_craft_app/controllers/trending_notifier.dart';
import 'package:home_craft_app/models/product_model.dart';
import 'package:home_craft_app/pages/category/components/category_item.dart';
import 'package:home_craft_app/pages/category/components/collection_item.dart';
import 'package:home_craft_app/pages/category/components/trend_item.dart';
import 'package:home_craft_app/size_config.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Discover",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(26),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  ...List.generate(
                    context.watch<CategoryNotifier>().categories.length,
                    (index) => CategoryItem(
                      imageSrc: context
                          .watch<CategoryNotifier>()
                          .categories[index]
                          .imageSrc,
                      title: context
                          .watch<CategoryNotifier>()
                          .categories[index]
                          .title,
                      amount: context
                          .watch<CategoryNotifier>()
                          .categories[index]
                          .amount,
                      color: context
                          .watch<CategoryNotifier>()
                          .categories[index]
                          .color,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Trending",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Show all",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_right),
                ],
              ),
            ),
            SizedBox(height: 20),
            ...List.generate(
              context.watch<TrendingNotifier>().trending.length,
              (index) {
                ProductModel item =
                    context.watch<TrendingNotifier>().trending[index];
                return TrendItem(
                  imageSrc: item.cover,
                  title: item.title,
                  prize: item.prize.toString(),
                  onPressed: () {},
                );
              },
            ),
            SizedBox(height: 30),
            Container(
              height: 170,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    ...List.generate(3, (index) => CollectionItem()),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 100,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
