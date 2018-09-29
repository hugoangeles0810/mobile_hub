import 'package:flutter/material.dart';
import 'package:mobile_hub/login_with_github.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MobileHub"),
      ),
      body: Center(
        child: LoginWithGithub(
          onPressEvent: () {
            Navigator.pushNamed(context, "main");
          },
        ),
      ),
    );
  }
}
