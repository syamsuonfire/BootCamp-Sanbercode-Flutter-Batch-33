import 'package:flutter/material.dart';

class DrawerScreen13 extends StatefulWidget {
  const DrawerScreen13({Key? key}) : super(key: key);

  @override
  State<DrawerScreen13> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen13> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Achmad Hilmy "),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/hilmy.png"),
            ),
            accountEmail: Text("hilmy@gmail.com"),
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {},
          ),
          DrawerListTile(
            iconData: Icons.group,
            title: "New Group",
            onTilePressed: () {
              print("object");
            },
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final IconData iconData;
  final String? title;
  final VoidCallback? onTilePressed;

  DrawerListTile({
    Key? key,
    required this.iconData,
    this.onTilePressed,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilePressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(
        title!,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
