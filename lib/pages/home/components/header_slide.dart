import 'package:flutter/material.dart';
import 'package:home_craft_app/components/slide_text_model.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class HeaderSlide extends StatefulWidget {
  HeaderSlide({
    Key key,
    this.height = 350,
    this.data,
    this.image,
  }) : super(key: key);

  final double height;
  final String image;
  final List<SlideTextModel> data;

  @override
  _HeaderSlideState createState() => _HeaderSlideState();
}

class _HeaderSlideState extends State<HeaderSlide> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          widget.image,
          fit: BoxFit.cover,
          height: widget.height,
          width: SizeConfig.screenWidth,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: widget.height,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentpage = value;
                    });
                  },
                  itemCount: widget.data.length,
                  itemBuilder: (_, index) => buildSlidetext(widget.data[index]),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: List.generate(
                  widget.data.length,
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

  Column buildSlidetext(SlideTextModel item) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          item.title,
          maxLines: 2,
          style: TextStyle(
            fontSize: 40,
            height: 1,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          item.desc,
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
