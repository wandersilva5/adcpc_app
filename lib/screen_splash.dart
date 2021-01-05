import 'package:adcpc/constants.dart';
import 'package:adcpc/screen/login/login_screen.dart';
import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  @override
  _ScreenSplashState createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/logo-branco.png",
                width: 150,
                height: 150,
              ),
              SizedBox(height: 10),
              Text(
                "adcpc",
                style: TextStyle(color: kTextColor, fontSize: 22),
              ),
              SizedBox(height: 30),
              Text(
                "ASSEMBLEIA DE DEUS",
                style: TextStyle(color: kTextColor, fontSize: 22),
              ),
              Text(
                "CENTRAL DE PONTO CHIC",
                style: TextStyle(color: kTextColor, fontSize: 22),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 20),
                    Text("By Wander Silva", style: TextStyle(color: kTextColor))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
