import 'package:adcpc/constants.dart';
import 'package:adcpc/models/page_manager.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildNavBarItem(0, context, Icons.home, "Home"),
        buildNavBarItem(1, context, Icons.monetization_on, "Dízimo"),
        buildNavBarItem(2, context, Icons.credit_card, "Membro"),
        buildNavBarItem(3, context, Icons.person, "Perfil"),
      ],
    );
  }

  Widget buildNavBarItem(
      int page, BuildContext context, IconData icon, String text) {
    final int curPage = context.watch<PageManager>().page;

    return InkWell(
      onTap: () {
        context.read<PageManager>().setPage(page);
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width / 4,
        decoration: curPage == page
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    width: 4,
                    color: kPrimaryColor,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    kPrimaryColor.withOpacity(0.3),
                    kPrimaryColor.withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
                color: curPage == page ? kPrimaryColor : Colors.white,
              )
            : BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: curPage == page ? kPrimaryColor : Colors.grey,
              size: curPage == page ? 30 : 25,
            ),
            Text(
              text,
              style: TextStyle(
                color: curPage == page ? kPrimaryColor : Colors.grey,
                fontSize: curPage == page ? 18 : 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
