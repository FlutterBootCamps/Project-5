import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    this.color = buttonSignatureGreenColor,
    required this.text,
    this.onTap,
    this.height = 50,
    this.isDisabled = false,
  });
  final Color color;
  final String text;
  final double height;
  final bool? isDisabled;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      disabledColor: textFieldGreyColor,
      height: height,
      color: color,
      minWidth: context.getWidth(context),
      onPressed: (isDisabled!) ? null : onTap,
      child: Text(
        text,
        style: TextStyle(
            color: (isDisabled!) ? lightInactiveGreyColor : whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
    );
  }
}
