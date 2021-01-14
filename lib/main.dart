import 'package:adcpc/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/user_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserManager(),
      child: MaterialApp(
        title: 'adcpc app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: ScreenSplash(),
      ),
    );
  }
}
