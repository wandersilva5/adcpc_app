import 'package:adcpc/constants.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

class MembroInfo extends StatelessWidget {
  const MembroInfo({
    Key key,
    this.titleLivre,
    this.image,
  }) : super(key: key);
  final String titleLivre, image;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapePerfil(),
            child: Container(
              height: defaultSize * 20,
              color: kPrimaryColor,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: defaultSize * 5),
                  height: defaultSize * 16,
                  width: defaultSize * 39,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.contain,
                        image: AssetImage(image),
                        alignment: Alignment.topRight),
                  ),
                ),
                Text(
                  titleLivre,
                  style: TextStyle(
                    fontSize: defaultSize * 2.2,
                    color: kTextColo2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomShapePerfil extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
