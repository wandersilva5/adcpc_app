import 'package:flutter/material.dart';

alert(BuildContext context, String msg){
  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text('Login'),
        content: Text(msg),
        actions: <Widget>[
          FlatButton(
            child: Text('Ok'),
            onPressed: () {
              Navigator.pop(context); // Dismiss alert dialog
            },
          ),
        ],
      );
    },
  );
}