import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.nextScreen, required this.buttonText});
  Widget nextScreen;
  String buttonText = '';

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.pushTo(view:  const nextScreen );
      },
      child: Container(
        decoration: const BoxDecoration(
          color: green,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        width: context.getWidth(),
        height: context.getWidth() * 0.15,
        alignment: Alignment.center,
        child: const Text(
          "Add a trip",
          style: TextStyle(
              color: white, fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
    );
  }
}
