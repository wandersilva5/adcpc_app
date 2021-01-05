import 'package:flutter/material.dart';

class TextFieldPassword extends StatelessWidget {
  final IconData iconField;
  final String hint, label;
  final bool senha;
  final ValueChanged<String> onChanged;
  final TextEditingController controller;
  final FormFieldValidator<String> validator;
  const TextFieldPassword({
    Key key,
    this.hint,
    this.label,
    this.senha = false,
    this.controller,
    this.validator,
    this.iconField,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          icon: Icon(iconField),
          suffixIcon: Icon(Icons.visibility_off),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
