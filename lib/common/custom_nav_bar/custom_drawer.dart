import 'package:adcpc/common/custom_nav_bar/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerTile(iconData: Icons.home, title: "Início", page: 0),
          DrawerTile(
              iconData: Icons.monetization_on, title: "Lançamentos", page: 4),
          DrawerTile(iconData: Icons.message, title: "Mensagens", page: 6),
          DrawerTile(iconData: Icons.pageview, title: "Avisos", page: 7),
          DrawerTile(iconData: Icons.exit_to_app, title: "Sair", page: 8),
        ],
      ),
    );
  }
}
