import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_5/utils/colors.dart';

class IconTextBar extends StatelessWidget {
  const IconTextBar({
    super.key, required this.icon, required this.text, required this.isLink, this.onTap,
  });

  final IconData? icon;
  final Color? iconColor = iconSignatureGreenColor;
  final String text;
  final bool isLink;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            FaIcon(icon, color: iconColor,),
            const SizedBox(width: 16,),
            Expanded(child: Text(text, style: const TextStyle(color: whiteColor, fontSize: 16,),)),
            Icon(Icons.arrow_outward_outlined, color: (isLink) ? draggbleGreyColor : noColor,)
          ],
        ),
      ),
    );
  }
}
