import 'package:flutter/material.dart';
import 'package:home_craft_app/components/title_show_all.dart';
import 'package:home_craft_app/controllers/horizontal_item.dart';
import 'package:home_craft_app/controllers/new_arrival_notifier.dart';
import 'package:home_craft_app/size_config.dart';
import 'package:provider/provider.dart';
import 'components/header_slide.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderSlide(),
                TitleShowAll(
                  title: "New Arrivals",
                  onPressed: () {},
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      ...List.generate(
                        context.watch<NewArrivalNotifier>().newArrivals.length,
                        (index) => HorizontalItem(
                          product: context
                              .watch<NewArrivalNotifier>()
                              .newArrivals[index],
                        ),
                      ),
                    ],
                  ),
                ),
                TitleShowAll(
                  title: "Top Trends",
                  onPressed: () {},
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      ...List.generate(
                        context.watch<NewArrivalNotifier>().newArrivals.length,
                        (index) => HorizontalItem(
                          product: context
                              .watch<NewArrivalNotifier>()
                              .newArrivals[index],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
