import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/sized.dart';

class Welcoming extends StatelessWidget {
  const Welcoming({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        gapH20,
        gapH20,
        Text(
          "Welcome to saudia",
          style: GoogleFonts.notoSerifKannada(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
        ),
        Row(
          children: [
            SizedBox(
              height: 20,
              child: Stack(alignment: Alignment.center, children: [
                Text(
                  "Join AlFursan",
                  style: GoogleFonts.notoSerifKannada(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                Positioned(
                    top: 17,
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          border:
                              Border(top: BorderSide(color: whit, width: 1))),
                    ))
              ]),
            ),
            Text(
              " to enjoy exclusive privileges.",
              style: GoogleFonts.notoSerifKannada(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
        gapH20,
      ],
    );
  }
}
