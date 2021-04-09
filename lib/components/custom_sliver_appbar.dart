import 'package:flutter/material.dart';

class CustomSliverAppBar extends StatelessWidget {
  const CustomSliverAppBar({
    Key key,
    this.leading,
    this.actions,
    @required this.imageUrl,
    @required this.child,
    this.height = 220,
    this.backgroundColor = Colors.white,
    this.brightness = Brightness.dark,
  }) : super(key: key);

  final Widget leading;
  final List<Widget> actions;
  final String imageUrl;
  final Brightness brightness;
  final Widget child;
  final double height;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: height,
      floating: false,
      pinned: false,
      elevation: 0,
      brightness: brightness,
      backgroundColor: backgroundColor,
      leading: leading,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: child,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.decal,
                  stops: [0, 1],
                  colors: [
                    Colors.transparent,
                    Colors.black26,
                  ],
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
      actions: actions,
    );
  }
}
