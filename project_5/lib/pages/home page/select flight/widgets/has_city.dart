import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/sized.dart';

class HasCity extends StatelessWidget {
  const HasCity(
      {super.key,
      required this.cityName,
      required this.cityCut,
      required this.top});
  final String cityName;
  final String cityCut;
  final String top;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          top,
          style: GoogleFonts.notoSerifKannada(
              color: containertext, fontSize: 15, fontWeight: FontWeight.w500),
        ),
        gapH10,
        Text(cityCut,
            style: GoogleFonts.notoSerifKannada(
                color: whit, fontSize: 15, fontWeight: FontWeight.w600)),
        gapH10,
        Text(cityName,
            style: GoogleFonts.notoSerifKannada(
                color: containertext,
                fontSize: 15,
                fontWeight: FontWeight.w500))
      ],
    );
  }
}