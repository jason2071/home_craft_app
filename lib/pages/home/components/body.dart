import 'package:flutter/material.dart';
import 'package:home_craft_app/components/title_show_all.dart';
import 'package:home_craft_app/controllers/horizontal_item.dart';
import 'package:home_craft_app/controllers/new_arrival_notifier.dart';
import 'package:provider/provider.dart';
import 'header_slide.dart';

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
              TitleShowAll(
                title: "Best sellers",
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
    );
  }
}
