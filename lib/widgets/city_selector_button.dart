import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class CitySelectorButton extends StatelessWidget {
  const CitySelectorButton({
    super.key, required this.currentCity, this.onTap,
  });
  final String currentCity;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          RichText(
            text:  TextSpan(
              text: "Fares from  ",
              style: const TextStyle(
                  color: whiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              children: [
                TextSpan(
                    text: currentCity,
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.underline,
                    )),
              ],
            ),
          ),
          const SizedBox(width: 5,),
          Transform.rotate(
            angle: 270 * pi /180,
            child: const Icon(Icons.arrow_back_ios_new_sharp, color: whiteColor, size: 15,))
        ],
      ),
    );
  }
}
