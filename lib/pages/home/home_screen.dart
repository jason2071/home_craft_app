import 'package:flutter/material.dart';
import 'package:home_craft_app/constants.dart';
import 'package:home_craft_app/models/category_model.dart';
import 'package:home_craft_app/size_config.dart';
import 'components/category_item.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.lightBlue.shade100,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/target.png"),
                  ),
                  Column(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
