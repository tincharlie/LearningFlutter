import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // return Material(
      //     child: Center(
      //   child: Text(
      //     "Login Page",
      //     style: TextStyle(fontSize: 40, fontFamily: "Italic"),
      //   ),
      // )
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Container(
          child: Text("Login"),
        ),
      ),
    );
  }
}
