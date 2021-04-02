import 'package:flutter/material.dart';
import 'package:home_craft_app/components/custom_drawer.dart';
import 'package:home_craft_app/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    SizeConfig().init(context);

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: false,
              brightness: Brightness.dark,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://i.pinimg.com/564x/c9/ba/c6/c9bac67e3204ada8c06f5a6f8b8fa05d.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.menu, color: Colors.white),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                },
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.shopping_bag_outlined, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            )
          ];
        },
        body: Body(),
      ),
    );
  }
}
