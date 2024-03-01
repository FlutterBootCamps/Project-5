import 'package:flutter/material.dart';

class IconButtonUnpadded extends StatelessWidget {
  const IconButtonUnpadded({
    super.key,
    required this.icon,
    this.onTap,
  });
  final Icon icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        style: const ButtonStyle(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap, // the '2023' part
        ),
        onPressed: onTap,
        icon: icon);
  }
}
