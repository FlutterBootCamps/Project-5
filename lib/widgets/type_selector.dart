import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class TypeSelector extends StatelessWidget {
  const TypeSelector({
    super.key,
    required this.label,
    required this.items,
    this.onChanged,
  });
  final String label;
  final List<DropdownMenuItem<Object>> items;
  final Function(Object? index)? onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: const TextStyle(color: whiteColor, fontSize: 16),
      decoration: InputDecoration(
        fillColor: darkGreyColor,
        filled: true,
        border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: signatureGreenColor, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        label: Padding(
          padding: const EdgeInsets.only(top: 32),
          child: Text(
            label,
          ),
        ),
        labelStyle: const TextStyle(
            color: greyTextColor, fontSize: 14, fontWeight: FontWeight.w500),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down_rounded,
        color: iconSignatureGreenColor,
      ),
      items: items,
      onChanged: onChanged,
      dropdownColor: darkGreyColor,
    );
  }
}
