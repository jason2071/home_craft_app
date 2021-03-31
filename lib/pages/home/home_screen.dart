import 'package:flutter/material.dart';
import 'package:home_craft_app/components/default_button.dart';
import 'package:home_craft_app/constants.dart';
import 'package:home_craft_app/models/category_model.dart';
import 'package:home_craft_app/size_config.dart';
import 'components/category_item.dart';
import 'components/collection_item.dart';
import 'components/trend_item.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_sharp),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
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
                      categories.length,
                      (index) => CategoryItem(
                        imageSrc: categories[index].imageSrc,
                        title: categories[index].title,
                        amount: categories[index].amount,
                        color: categories[index].color,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
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
                3,
                (index) => TrendItem(
                  imageSrc: "assets/images/target.png",
                  title: "Target",
                  prize: "29.00",
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 20),
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
      ),
    );
  }
}
