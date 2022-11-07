import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Vipul";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ML Class App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Machine Learning by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
