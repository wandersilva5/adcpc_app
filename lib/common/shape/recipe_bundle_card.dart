import 'package:adcpc/size_config.dart';
import 'package:flutter/material.dart';

class RecipeBundleCard extends StatelessWidget {
  final double sizeHeight;
  final String description;
  final Widget options;
  final Color color;

  const RecipeBundleCard({
    Key key,
    this.sizeHeight = 1.65,
    this.description = "",
    this.options,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: AspectRatio(
        aspectRatio: sizeHeight,
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(defaultSize * 1.8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Text(
                  description,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
