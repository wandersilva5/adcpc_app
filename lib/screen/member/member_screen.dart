import 'package:adcpc/screen/member/components/membro_info.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

import 'components/membro_card.dart';

class MemberScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MembroInfo(
              image: "assets/images/logo-branco.png",
              titleVideo: "CARTÃO DE MEMBRO",
            ),
            SizedBox(height: defaultSize * 2),
            MembroCard(),
          ],
        ),
      ),
    );
  }
}
