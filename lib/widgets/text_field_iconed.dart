import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class TextFieldIconed extends StatelessWidget {
  const TextFieldIconed({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    this.onChanged,
    this.keyboardType = TextInputType.text,
    this.isIconLeft = false,
    this.iconColor = iconGreyColor,
    this.readOnly = false,
    this.onTap,
  });

  final String label;
  final IconData icon;
  final TextEditingController controller;
  final Function(String text)? onChanged;
  final TextInputType? keyboardType;
  final Color? iconColor;
  final bool? isIconLeft;
  final bool? readOnly;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: readOnly!,
      onTap: onTap,
      keyboardType: keyboardType,
      style: const TextStyle(color: whiteColor, fontSize: 16),
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
          fillColor: textFieldGreyColor,
          filled: true,
          labelText: label,
          labelStyle: const TextStyle(
              color: greyTextColor, fontWeight: FontWeight.w400),
          suffixIcon: (isIconLeft!)
              ? null
              : Icon(
                  icon,
                  color: iconColor,
                ),
          prefixIcon: (isIconLeft!)
              ? Icon(
                  icon,
                  color: iconColor,
                )
              : null,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(color: signatureGreenColor, width: 2),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            borderSide: BorderSide.none,
          )),
    );
  }
}
