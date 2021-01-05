import 'package:flutter/material.dart';

class TextFieldContainer extends StatefulWidget {
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
  _TextFieldContainerState createState() => _TextFieldContainerState();
}

class _TextFieldContainerState extends State<TextFieldContainer> {
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
        validator: widget.validator,
        controller: widget.controller,
        obscureText: showPassword == false ? widget.senha : false,
        onChanged: (value) {},
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          icon: Icon(widget.iconField),
          suffixIcon: widget.senha == true
              ? GestureDetector(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                      debugPrint("certo $showPassword");
                    });
                  },
                  child: Icon(showPassword == false
                      ? Icons.visibility_off
                      : Icons.visibility),
                )
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
