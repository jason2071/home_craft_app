import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HeaderSlide extends StatefulWidget {
  HeaderSlide({Key key}) : super(key: key);

  @override
  _HeaderSlideState createState() => _HeaderSlideState();
}

class _HeaderSlideState extends State<HeaderSlide> {
  int currentpage = 0;
  List<Map<String, String>> slideData = [
    {
      "title": "Make yourself \nat home",
      "desc": "We love clean design and natural \nfurniture silutions",
    },
    {
      "title": "Make yourself \nat home2",
      "desc": "We love clean design and natural \nfurniture silutions2",
    },
    {
      "title": "Make yourself \nat home3",
      "desc": "We love clean design and natural \nfurniture silutions3",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          "https://i.pinimg.com/564x/c9/ba/c6/c9bac67e3204ada8c06f5a6f8b8fa05d.jpg",
          fit: BoxFit.cover,
          height: SizeConfig.screenHeight * 0.35,
          width: SizeConfig.screenWidth,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: SizeConfig.screenHeight * 0.34,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemCount: 3,
                  itemBuilder: (_, index) => buildSlidetext(slideData[index]),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: List.generate(
                  slideData.length,
                  (index) => buildDot(currentpage == index ? true : false),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        )
      ],
    );
  }

  Column buildSlidetext(Map<String, String> item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          item['title'],
          maxLines: 2,
          style: TextStyle(
            fontSize: 40,
            height: 1,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          item['desc'],
          maxLines: 2,
          style: TextStyle(
            fontSize: 20,
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
      width: 10,
      height: 10,
      margin: EdgeInsets.only(right: 4),
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
