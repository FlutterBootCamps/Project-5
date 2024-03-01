import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key, required this.text, this.onTap,
  });
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(onPressed: onTap, color: signatureGreenColor, child: Text(text, style: const TextStyle(color: whiteColor, fontWeight: FontWeight.w600, fontSize: 18),),);
  }
}

