import 'package:fashion_apps/screen/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fashion Apps",
      theme: ThemeData(primaryColor: Colors.pink),
      home: new LoginPage(),
    );
  }
}
