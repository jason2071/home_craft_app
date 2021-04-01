import 'package:flutter/material.dart';
import 'package:home_craft_app/pages/category/category_screen.dart';
import 'package:home_craft_app/pages/sign_in/sign_in_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CategoryScreen.routeName: (context) => CategoryScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
};
