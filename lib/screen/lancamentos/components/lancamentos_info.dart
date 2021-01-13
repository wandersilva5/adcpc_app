import 'package:adcpc/common/shape/custom_shape.dart';
import 'package:adcpc/constants.dart';
import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

class MembroInfo extends StatelessWidget {
  const MembroInfo({
    Key key,
    this.titleVideo,
    this.image,
  }) : super(key: key);
  final String titleVideo, image;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return SizedBox(
      height: defaultSize * 24,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShape(),
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
                  titleVideo,
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
