import 'package:flutter/material.dart';

alert(BuildContext context, String title, String msg) {
  showDialog<void>(
    context: context,
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(title),
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
