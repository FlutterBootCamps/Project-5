import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class TextFieldIconed extends StatelessWidget {
  const TextFieldIconed({
    super.key, required this.label, required this.icon, required this.controller, this.onChanged, this.keyboardType = TextInputType.text,
  });

  final String label;
  final IconData icon;
  final TextEditingController controller;
  final Function(String text)? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: keyboardType,
      style: const TextStyle(color: whiteColor, fontSize: 16),
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        fillColor: textFieldGreyColor,
        filled: true,
        labelText: label,
        labelStyle: const TextStyle(color: greyTextColor, fontWeight: FontWeight.w400),
        suffixIcon: Icon(icon, color: iconGreyColor,),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: signatureGreenColor, width: 2),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4),),
          borderSide: BorderSide.none,
        )
      ),
    );
  }
}
