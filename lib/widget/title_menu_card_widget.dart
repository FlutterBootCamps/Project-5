import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';

class TitleMenu extends StatelessWidget {
  const TitleMenu({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w300, color: darkGrey),
        ),
      ]),
    );
  }
}
