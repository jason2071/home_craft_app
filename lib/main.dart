import 'package:flutter/material.dart';
import 'package:home_craft_app/controllers/category_notifier.dart';
import 'package:home_craft_app/controllers/new_arrival_notifier.dart';
import 'package:home_craft_app/controllers/trending_notifier.dart';
import 'package:home_craft_app/pages/home/home_screen.dart';
import 'package:home_craft_app/routes.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CategoryNotifier()),
      ChangeNotifierProvider(create: (context) => TrendingNotifier()),
      ChangeNotifierProvider(create: (context) => NewArrivalNotifier()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themData(),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
