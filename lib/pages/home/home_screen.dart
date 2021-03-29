import 'package:flutter/material.dart';
import 'package:home_craft_app/constants.dart';
import 'package:home_craft_app/models/category_model.dart';
import 'package:home_craft_app/models/product_model.dart';
import 'package:home_craft_app/size_config.dart';
import 'components/categoey_item.dart';
import 'components/grid_list.dart';
import 'components/row_list.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _gridMode = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        actions: [
          IconButton(
            icon: Icon(Icons.backpack),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          )
        ],
      ),
      body: SafeArea(
        top: false,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        categories.length,
                        (index) => CategoryItem(
                          title: categories[index].title,
                          imageSrc: categories[index].imageSrc,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "101 Products",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        child: Row(
                          children: [
                            Text(
                              "Popular",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _gridMode = true;
                        });
                      },
                      child: Image.asset(
                        "assets/images/icon_grid.png",
                        width: 20,
                        height: 20,
                        color: _gridMode ? Colors.grey.shade400 : Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _gridMode = false;
                        });
                      },
                      child: Image.asset(
                        "assets/images/icon_view_list.png",
                        width: 28,
                        height: 28,
                        color: !_gridMode ? Colors.grey.shade400 : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              if (_gridMode) Expanded(child: GridList(data: productList)),
              if (!_gridMode) Expanded(child: RowList(data: productList)),
            ],
          ),
        ),
      ),
    );
  }
}
