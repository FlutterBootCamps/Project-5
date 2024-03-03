import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/extintion.dart';

class AddPromo extends StatelessWidget {
  const AddPromo(
      {super.key, required this.color1, required this.color2, this.onPressed});
  final Color color1;
  final Color color2;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(5),
        height: context.getWidth() / 13,
        width: context.getWidth(),
        decoration: BoxDecoration(
          color: color1,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              "Applay promotion",
              style: GoogleFonts.notoSerifKannada(
                  color: color2, fontSize: 17, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
