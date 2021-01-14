import 'package:adcpc/common/custom_nav_bar/custom_bottom_nav_bar.dart';
import 'package:adcpc/common/custom_nav_bar/custom_drawer.dart';
import 'package:adcpc/constants.dart';
import 'package:adcpc/models/page_manager.dart';
import 'package:adcpc/screen/dizimo/dizimo_screen.dart';
import 'package:adcpc/screen/home/home_screen.dart';
import 'package:adcpc/screen/lancamentos/lancamentos_screen.dart';
import 'package:adcpc/screen/member/member_screen.dart';
import 'package:adcpc/screen/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BaseScreen extends StatelessWidget {
  // const BaseScreen({Key key}) : super(key: key);

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          Scaffold(
            drawer: CustomDrawer(),
            appBar: buildAppBar(),
            body: HomeScreen(),
            bottomNavigationBar: CustomBottomNavBar(),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: buildAppBar(),
            body: DizimoScreen(),
            bottomNavigationBar: CustomBottomNavBar(),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: buildAppBar(),
            body: MemberScreen(),
            bottomNavigationBar: CustomBottomNavBar(),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: buildAppBar(),
            body: ProfileScreen(),
            bottomNavigationBar: CustomBottomNavBar(),
          ),
          Scaffold(
            drawer: CustomDrawer(),
            appBar: buildAppBar(),
            body: LancamentosScreen(),
            bottomNavigationBar: CustomBottomNavBar(),
          ),
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      centerTitle: true,
      title: Text("AD Central de Ponto Chic"),
      elevation: 0,
    );
  }
}
