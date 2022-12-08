import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/mlapp.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // Vx.hexToColor(code)
      children: [
        // "MLApp".text.xl5.bold.color(MyTheme.darkBlueColor).make(),
        // ignore: deprecated_member_use
        "MLApp".text.xl5.bold.color(context.theme.accentColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
