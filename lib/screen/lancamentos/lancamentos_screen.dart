import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

import 'components/lancamentos_body.dart';
import 'components/lancamentos_info.dart';

class LancamentosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LancamentosInfo(
              image: "assets/images/logo-branco.png",
              titleVideo: "LANÇAMENTO DE DIZIMOS",
            ),
            SizedBox(height: defaultSize * 2),
            LancamentosBody(),
          ],
        ),
      ),
    );
  }
}
