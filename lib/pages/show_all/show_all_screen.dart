import 'package:flutter/material.dart';

class ShowAllScreen extends StatelessWidget {
  static const routeName = '/show_all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Text("ShowAll"),
          ],
        ),
      ),
    );
  }
}
