import 'package:adcpc/constants.dart';
import 'package:adcpc/models/user.dart';
import 'package:adcpc/models/user_manager.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'or_divider.dart';
import 'social_icon.dart';

final GlobalKey<FormState> formKey = GlobalKey<FormState>();

class LoginForm extends StatelessWidget {
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10),
          shrinkWrap: true,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextFormField(
                controller: cpfController,
                // keyboardType: TextInputType.number,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "CPF",
                  labelText: "Digite o seu CPF",
                  icon: Icon(Icons.person),
                  border: InputBorder.none,
                ),
                validator: validCPF,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(29),
              ),
              child: TextFormField(
                controller: senhaController,
                autocorrect: false,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Senha",
                  labelText: "Digite a sua senha",
                  icon: Icon(Icons.lock),
                  border: InputBorder.none,
                ),
                validator: validSenha,
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset:
                        const Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  onPressed: () {
                    buildClickValida(context);
                  },
                  color: kSecondaryColor,
                  textColor: Colors.white,
                  child: const Text(
                    "Entrar",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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
    );
  }

  void buildClickValida(BuildContext context) {
    if (formKey.currentState.validate()) {
      context.read<UserManager>().signIn(
            User(
              email: cpfController.text,
              password: senhaController.text,
            ),
          );
    }
  }

  String validCPF(String value) {
    if (value.isEmpty || value.length < 3) return "CPF inválido";
    return null;
  }

  String validSenha(String value) {
    if (value.isEmpty || value.length < 3) return "senha inválida";
    return null;
  }
}
