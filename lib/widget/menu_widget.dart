import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saudia_app_project_5/constant/color.dart';

class Menu extends StatelessWidget {
  Menu({super.key, required this.color});
  Color color;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Icon(
          Icons.menu,
          color: color,
          size: 30,
        ),
      );
    });
  }
}
