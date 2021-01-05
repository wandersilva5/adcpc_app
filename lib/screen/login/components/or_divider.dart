import 'package:adcpc/constants.dart';
import 'package:flutter/material.dart';

class OrDivide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              " Nossas Redes Sociais ",
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: kTextColor,
        height: 1.5,
      ),
    );
  }
}
