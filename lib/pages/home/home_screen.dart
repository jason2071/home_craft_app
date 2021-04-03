import 'package:flutter/material.dart';
import 'package:home_craft_app/components/custom_drawer.dart';
import 'package:home_craft_app/components/slide_text_model.dart';
import 'package:home_craft_app/size_config.dart';

import '../../constants.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = '/home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      key: _scaffoldKey,
      extendBodyBehindAppBar: true,
      drawer: CustomDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 220,
              floating: false,
              pinned: false,
              elevation: 0,
              brightness: Brightness.dark,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Image.network(
                          "https://i.pinimg.com/564x/c9/ba/c6/c9bac67e3204ada8c06f5a6f8b8fa05d.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Expanded(
                                child: PageView.builder(
                                  onPageChanged: (value) {
                                    setState(() {
                                      currentpage = value;
                                    });
                                  },
                                  itemCount: slideData.length,
                                  itemBuilder: (_, index) =>
                                      buildSlidetext(slideData[index]),
                                ),
                              ),
                              SizedBox(height: 20),
                              Row(
                                children: List.generate(
                                  slideData.length,
                                  (index) => buildDot(
                                      currentpage == index ? true : false),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
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
            ),
          ];
        },
        body: Body(),
      ),
    );
  }

  Column buildSlidetext(SlideTextModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          item.title,
          maxLines: 2,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(28),
            height: 1,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 6),
        Text(
          item.desc,
          maxLines: 2,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(14),
            color: Colors.white,
            height: 1.2,
          ),
        ),
      ],
    );
  }

  AnimatedContainer buildDot(bool active) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      width: 6,
      height: 6,
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
