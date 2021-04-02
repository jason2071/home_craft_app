import 'package:flutter/material.dart';
import 'package:home_craft_app/components/title_show_all.dart';
import 'package:home_craft_app/controllers/horizontal_item.dart';
import 'package:home_craft_app/controllers/new_arrival_notifier.dart';
import 'package:home_craft_app/pages/show_all/show_all_screen.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TitleShowAll(
                title: "New Arrivals",
                onPressed: () {
                  Navigator.pushNamed(context, ShowAllScreen.routeName);
                },
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
                onPressed: () {
                  Navigator.pushNamed(context, ShowAllScreen.routeName);
                },
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
                title: "Best sellers",
                onPressed: () {
                  Navigator.pushNamed(context, ShowAllScreen.routeName);
                },
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
    );
  }
}
