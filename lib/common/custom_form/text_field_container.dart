import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final IconData iconField;
  final String hint, label;
  final bool senha;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  const TextFieldContainer({
    Key key,
    this.hint,
    this.label,
    this.senha = false,
    this.controller,
    this.validator,
    this.iconField,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showPassword = false;
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.all(5),
      width: size.width * 0.9,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: showPassword == false ? senha : false,
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          icon: Icon(iconField),
          suffixIcon: senha == true
              ? Icon(Icons.visibility_off)
              : Icon(
                  Icons.visibility,
                  color: Colors.white,
                ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
