import 'package:flutter/material.dart';
import 'package:home_craft_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.dark,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
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
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Image.network(
                    "https://i.pinimg.com/564x/c9/ba/c6/c9bac67e3204ada8c06f5a6f8b8fa05d.jpg",
                    fit: BoxFit.cover,
                    height: SizeConfig.screenHeight * 0.32,
                    width: SizeConfig.screenWidth,
                  ),
                  Positioned(
                    left: 20,
                    bottom: 20,
                    right: 20,
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Make yourself \nat home",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 40,
                              height: 1,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            "We love clean design and natural \nfurniture silutions",
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              height: 1.2,
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              buildDot(false),
                              buildDot(false),
                              buildDot(true),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox buildDot(bool active) {
    return SizedBox(
      child: Container(
        width: 10,
        height: 10,
        margin: EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
          color: active ? Colors.white : Colors.grey,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
