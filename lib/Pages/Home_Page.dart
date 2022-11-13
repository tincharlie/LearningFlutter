import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Vipul";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ML Class App"),
      ),
      /* For App Bar Not using Here
      AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "ML Class App",
          style: TextStyle(color: Colors.black),
        ),
      )
      */
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of Machine Learning by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
