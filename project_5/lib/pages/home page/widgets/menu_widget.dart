import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/sized.dart';

class MenuItems extends StatelessWidget {
  const MenuItems(
      {super.key,
      required this.title,
      required this.icon,
      this.Link = true,
      required this.onTap});
  final String title;
  final IconData icon;
  final bool Link;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: green,
            ),
            gapW10,
            Text(
              title,
              style: GoogleFonts.notoSerifKannada(
                  color: whit, fontSize: 14, fontWeight: FontWeight.w500),
            )
          ],
        ),
        Visibility(
            visible: Link,
            child: Icon(
              Icons.arrow_outward_sharp,
              color: containertext,
            ))
      ],
    );
  }
}
