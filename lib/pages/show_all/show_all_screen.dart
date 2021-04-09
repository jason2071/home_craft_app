import 'package:flutter/material.dart';
import 'package:home_craft_app/components/custom_sliver_appbar.dart';
import 'package:home_craft_app/components/title_show_all.dart';
import 'package:home_craft_app/components/horizontal_item.dart';
import 'package:home_craft_app/components/warp_item.dart';
import 'package:home_craft_app/controllers/new_arrival_notifier.dart';
import 'package:home_craft_app/size_config.dart';
import 'package:provider/provider.dart';

class ShowAllScreen extends StatelessWidget {
  static const routeName = '/show_all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              CustomSliverAppBar(
                height: 400,
                brightness: Brightness.light,
                imageUrl:
                    "https://i.pinimg.com/564x/74/a7/3e/74a73eab8ec71d680f5ad3840d6dbe29.jpg",
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  ),
                ],
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Cyber Monday",
                        style: TextStyle(
                          color: Colors.grey.shade200,
                          fontWeight: FontWeight.w300,
                          fontSize: getProportionateScreenWidth(18),
                        ),
                      ),
                      Text(
                        "Sale Up To \n70% Off",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w900,
                          fontSize: getProportionateScreenWidth(30),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleShowAll(
                    title: "New Arrivals",
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: [
                        ...List.generate(
                          context
                              .watch<NewArrivalNotifier>()
                              .newArrivals
                              .length,
                          (index) => WrapItem(
                            product: context
                                .watch<NewArrivalNotifier>()
                                .newArrivals[index],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
