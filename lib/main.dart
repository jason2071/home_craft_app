import 'package:flutter/material.dart';
import 'package:home_craft_app/controllers/category_controller.dart';
import 'package:home_craft_app/pages/home/home_screen.dart';
import 'package:home_craft_app/routes.dart';
import 'package:provider/provider.dart';
import 'theme.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CategoryController()),
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
