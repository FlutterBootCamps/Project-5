import 'package:flutter/material.dart';

class TextButtonBar extends StatelessWidget {
  const TextButtonBar({
    super.key,
    required this.text,
    required this.isIconShown,
    this.onTap,
    this.bgColor,
    required this.textColor,
    required this.iconColor,
    this.icon,
    this.padding,
    required this.radius,
  });
  final String text;
  final bool isIconShown;
  final Color? bgColor;
  final Color textColor;
  final IconData? icon;
  final Color iconColor;
  final EdgeInsets? padding;
  final double radius;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: bgColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: 16, fontWeight: FontWeight.w600),
            ),
            (isIconShown)
                ? Icon(
                    icon,
                    color: iconColor,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
