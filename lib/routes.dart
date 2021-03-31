import 'package:flutter/material.dart';
import 'package:home_craft_app/pages/category/category_screen.dart';
import 'package:home_craft_app/pages/detail/detail_screen.dart';
import 'package:home_craft_app/pages/home/home_screen.dart';
import 'package:home_craft_app/pages/sign_in/sign_in_screen.dart';
import 'package:home_craft_app/pages/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  DetailScreen.routeName: (context) => DetailScreen(),
};
