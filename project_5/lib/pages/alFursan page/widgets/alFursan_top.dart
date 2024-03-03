import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/sized.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH20,
        gapH20,
        Text(
          "AlFursan",
          style: GoogleFonts.notoSerifKannada(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
        ),
        Text(
          "Log in to view your Miles, book your next trip, and much more.",
          style: GoogleFonts.notoSerifKannada(
              color: Colors.white, fontSize: 15, fontWeight: FontWeight.w300),
        ),
        gapH20,
      ],
    );
  }
}
