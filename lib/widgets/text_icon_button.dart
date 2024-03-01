import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'dart:math' as math;

class TextIconButton extends StatelessWidget {
  const TextIconButton({
    super.key, required this.text, required this.icon, this.onTap,
  });
  final String text;
  final Icon icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.getWidth(context),
        height: 60,
        color: darkGreyColor,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(child: Text(text, style: const TextStyle(color: greyTextColor, fontSize: 16),)),
            Transform.rotate(
              angle: 90 * math.pi / 180,
              child: icon)
          ],
        ),
        ),
    );
  }
}

