import 'package:adcpc/common/alerts/alert.dart';
import 'package:adcpc/common/custom_form/text_field_container.dart';
import 'package:adcpc/constants.dart';
import 'package:adcpc/screen/base/base_screen.dart';
import 'package:flutter/material.dart';

final formkey = GlobalKey<FormState>();

class LoginForm extends StatelessWidget {
  final ctrlLogin = TextEditingController();
  final ctrlPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            TextFieldContainer(
              iconField: Icons.person,
              label: "CPF",
              hint: "Digite seu CPF",
              validator: validateLogin,
              controller: ctrlLogin,
            ),
            TextFieldContainer(
              iconField: Icons.lock,
              label: "Senha",
              hint: "Digite sua senha",
              validator: validatePassword,
              controller: ctrlPassword,
              senha: true,
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(50),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset:
                        const Offset(0.1, 0.1), // changes position of shadow
                  ),
                ],
              ),
              // margin: EdgeInsets.symmetric(vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                  color: Color(0xFF4169E1),
                  onPressed: () {
                    _clickButon(context);
                  },
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _clickButon(BuildContext context) async {
    bool formOk = formkey.currentState.validate();

    if (!formOk) {
      return;
    }
    String login = "teste"; // ctrlLogin.text;
    String password = "123456"; //ctrlPassword.text;

    print("Login digitado: $login, e senha digitada: $password");

    // var usuario = await AuthenticateApi.login(login, password);

    if (login == "teste") {
      //if(usuario != null){
      navHome(context);
    } else {
      alert(context, "Login Inválido");
    }
  }

  void navHome(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BaseScreen(),
      ),
    );
  }
}

String validateLogin(String text) {
  if (text.isEmpty) {
    return "Este campo não pode ficar vazio";
  }
  if (text.length < 5) {
    return "Esse não é um CPF válido";
  }
  return null;
}

String validatePassword(String text) {
  if (text.isEmpty) {
    return "Este campo não pode ficar vazio";
  }
  if (text.length < 3) {
    return "Esse não é uma senha válida";
  }
  return null;
}
