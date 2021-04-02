import 'package:flutter/material.dart';
import 'package:home_craft_app/size_config.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.network(
                        "https://i.pinimg.com/564x/bb/21/ce/bb21ced72ebaebb78e64cffa7e4208e0.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "John Doe",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          DrawerItem(
            title: 'Dashboard',
            iconData: Icons.dashboard,
            onPressed: () {},
          ),
          DrawerItem(
            title: 'Explore',
            iconData: Icons.explore,
            onPressed: () {},
          ),
          DrawerItem(
            title: 'Discover',
            iconData: Icons.access_alarm,
            onPressed: () {},
          ),
          Divider(),
          DrawerItem(
            title: 'Logout',
            color: Colors.red.shade900,
            iconData: Icons.logout,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key key,
    @required this.title,
    this.iconData = Icons.home,
    this.color = Colors.black54,
    @required this.onPressed,
  }) : super(key: key);

  final String title;
  final Color color;
  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: getProportionateScreenWidth(16),
          color: color,
        ),
      ),
      leading: Icon(iconData, color: color),
      onTap: () {
        onPressed();
        Navigator.pop(context);
      },
    );
  }
}
