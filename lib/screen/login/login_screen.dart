import 'package:adcpc/constants.dart';
import 'package:adcpc/screen/login/components/login_form.dart';
import 'package:adcpc/screen/login/components/or_divider.dart';
import 'package:adcpc/screen/login/components/social_icon.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.98,
              child: Stack(
                children: <Widget>[
                  ClipPath(
                    clipper: CustomShape(),
                    child: Container(
                      height: size.height * 0.3,
                      color: Colors.white,
                    ),
                  ),
                  Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 10, left: 200),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"),
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        LoginForm(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: <Widget>[],
            ),
          ],
        ),
      ),
      backgroundColor: kPrimaryColor,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kTextColor,
      centerTitle: true,
      title: Text(
        "AD Central de Ponto Chic",
        style: TextStyle(color: kPrimaryColor),
      ),
      elevation: 0,
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 170);
    path.quadraticBezierTo(width / 3, height, width, height - 20);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
