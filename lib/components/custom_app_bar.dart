import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  CustomAppBar({
    this.title = '',
    this.leading,
    this.actions,
    this.height = kToolbarHeight,
  });

  final double height;
  final String title;
  final Widget leading;
  final List<Widget> actions;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.transparent,
      brightness: Brightness.dark,
      leading: leading,
      actions: actions,
    );
  }
}
