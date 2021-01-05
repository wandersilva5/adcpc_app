import 'package:adcpc/constants.dart';
import 'package:adcpc/screen/login/components/login_form.dart';
import 'package:adcpc/screen/login/components/or_divider.dart';
import 'package:adcpc/screen/login/components/social_icon.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              height: size.height * 1,
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
                        SizedBox(height: size.height * 0.02),
                        // LoginForm()
                        Container(
                          margin: EdgeInsets.only(top: size.height * 0.02),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          height: size.height * 1,
                          width: size.width * 0.90,
                          child: Container(
                            child: Column(
                              children: [
                                LoginForm(),
                                SizedBox(height: size.height * 0.02),
                                OrDivide(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SocialIcon(
                                      iconSrc: "assets/images/facebook.png",
                                      press: () => launch(
                                          "https://www.facebook.com/AssembleiaDeDeusCentralDePontoChic"),
                                    ),
                                    SocialIcon(
                                      iconSrc: "assets/images/whatsapp.png",
                                      press: () => launch(
                                          'https://chat.whatsapp.com/D1g3odYUQLv6sIUjKAdWgZ'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
