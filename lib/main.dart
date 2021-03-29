import 'package:flutter/material.dart';
import 'package:home_craft_app/pages/home/home_screen.dart';
import 'package:home_craft_app/routes.dart';
import 'theme.dart';

void main() {
  runApp(MyApp());
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
