import 'package:flutter/material.dart';

class FullCardMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Material(
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Image.asset(
                  "assets/images/card-member-fundo.png",
                  fit: BoxFit.contain,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center,
                ),
              ),
            ),
            // Positioned(
            //   top: 15,
            //   left: 67,
            //   child: Container(
            //     width: 100,
            //     height: 125,
            //     decoration: BoxDecoration(
            //       image: DecorationImage(
            //         image: AssetImage("assets/images/avatar.png"),
            //       ),
            //       shape: BoxShape.rectangle,
            //     ),
            //   ),
            // ),
            // TextoPosicioned(
            //   text: "Vanderlei da Silva Lopes",
            //   topText: 185,
            //   leftText: 75,
            //   largura: 290,
            // ),
            // TextoPosicioned(
            //   text: "Pastor",
            //   topText: 185,
            //   leftText: 380,
            //   largura: 290,
            // ),
            // TextoPosicioned(
            //   text: "José Lopes de Souza e Zumira da S. Lopes",
            //   topText: 245,
            //   leftText: 75,
            //   largura: 400,
            // ),
            // TextoPosicioned(
            //   text: "01/01/1998",
            //   topText: 305,
            //   leftText: 75,
            //   largura: 200,
            // ),
            // TextoPosicioned(
            //   text: "01/01/2021",
            //   topText: 305,
            //   leftText: 360,
            //   largura: 200,
            // ),
          ],
        ),
      ),
    );
  }
}

class TextoPosicioned extends StatelessWidget {
  final String text;
  final double topText, leftText, largura;
  const TextoPosicioned({
    Key key,
    this.text,
    this.topText,
    this.leftText,
    this.largura,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topText,
      left: leftText,
      child: Container(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        width: largura,
        height: 35,
      ),
    );
  }
}
