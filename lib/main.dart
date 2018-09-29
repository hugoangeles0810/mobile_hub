import 'package:flutter/material.dart';
import 'package:mobile_hub/home_screen.dart';
import 'package:mobile_hub/login_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Mobile Hub',
      routes: {
        '/' : (context) => LoginScreen(),
        'main': (context) => HomeScreen()
      },
      initialRoute: "/",
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

