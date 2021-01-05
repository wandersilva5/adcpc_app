import 'package:adcpc/common/shape/recipe_bundle_card.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

import 'components/home_info.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HomeInfo(
              image: "assets/images/logo-branco.png",
              titleVideo: "QUADRO DE AVISO",
            ),
            SizedBox(height: defaultSize * 2),
            RecipeBundleCard(
              description: 'Este quadro, serve para avisos importantes',
            ),
          ],
        ),
      ),
    );
  }
}
