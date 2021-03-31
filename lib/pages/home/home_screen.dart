import 'package:flutter/material.dart';
import 'package:home_craft_app/constants.dart';
import 'package:home_craft_app/controllers/category_controller.dart';
import 'package:home_craft_app/models/category_model.dart';
import 'package:home_craft_app/models/product_model.dart';
import 'package:home_craft_app/pages/category/category_screen.dart';
import 'package:home_craft_app/size_config.dart';
import 'package:provider/provider.dart';
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

  final elements = [
    "Breakfast",
    "Lunch",
    "2nd Snack",
    "Dinner",
    "3rd Snack",
  ];
  String dropdownValue = 'Breakfast';

  List<Widget> _buildItems() {
    return elements.map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

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
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        categories.length,
                        (index) => CategoryItem(
                          title: categories[index].title,
                          imageSrc: categories[index].imageSrc,
                          onPressed: () {
                            if (categories.isNotEmpty)
                              context
                                  .read<CategoryController>()
                                  .activeCategoryData(categories[index]);

                            Navigator.pushNamed(
                              context,
                              CategoryScreen.routeName,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      "101 Products",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Spacer(),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.keyboard_arrow_down),
                      underline: Container(),
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(16),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: _buildItems(),
                    ),
                    SizedBox(width: 10),
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
