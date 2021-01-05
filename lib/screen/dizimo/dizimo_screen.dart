import 'package:adcpc/screen/dizimo/components/dizimo_info.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

import 'components/dizimo_body.dart';

class DizimoScreen extends StatelessWidget {
  const DizimoScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DizimoInfo(
              image: "assets/images/logo-branco.png",
              titleVideo: "DIZIMOS DO ANO DE 2021",
            ),
            SizedBox(height: defaultSize * 2),
            DizimoBody(),
          ],
        ),
      ),
    );
  }
}
