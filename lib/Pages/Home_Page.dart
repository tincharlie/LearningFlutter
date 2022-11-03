
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final Days = 30;
  final String name = "Vipul";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ML App"),
      ),
      body: Center(
        child: Container(
          child: Text("Wlcm to $Days days of ML Series by $name"),
        ),
      ),
    drawer: Drawer(),
    );
  }
}