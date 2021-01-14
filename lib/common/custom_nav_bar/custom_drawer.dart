import 'package:adcpc/constants.dart';
import 'package:adcpc/models/page_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          DrawerTile(iconData: Icons.message, title: "Mensagens", page: 5),
          DrawerTile(iconData: Icons.pageview, title: "Avisos", page: 6),
          DrawerTile(iconData: Icons.exit_to_app, title: "Sair", page: 7),
        ],
      ),
    );
  }
}

class DrawerTile extends StatelessWidget {
  const DrawerTile({Key key, this.iconData, this.title, this.page})
      : super(key: key);

  final IconData iconData;
  final String title;
  final int page;

  @override
  Widget build(BuildContext context) {
    final int curPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: SizedBox(
        height: 60,
        child: Container(
          decoration: curPage == page
              ? BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      width: 4,
                      color: kPrimaryColor,
                    ),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      kPrimaryColor.withOpacity(0.3),
                      kPrimaryColor.withOpacity(0.015),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                  ),
                  color: curPage == page ? kPrimaryColor : Colors.white,
                )
              : BoxDecoration(),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Icon(
                  iconData,
                  size: 32,
                  color: curPage == page ? kPrimaryColor : Colors.grey[700],
                ),
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: curPage == page ? kPrimaryColor : Colors.grey[700]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
