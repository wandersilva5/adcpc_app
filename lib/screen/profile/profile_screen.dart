import 'package:adcpc/screen/profile/components/membro_info.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key key}) : super(key: key);

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
              titleLivre: "PERFIL",
            ),
            SizedBox(height: defaultSize * 2),
          ],
        ),
      ),
    );
  }
}
