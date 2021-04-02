import 'package:flutter/material.dart';

class ShowAllScreen extends StatelessWidget {
  static const routeName = '/show_all';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShowAll"),
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
