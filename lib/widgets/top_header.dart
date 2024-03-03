import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
    required this.headerText,
    required this.tabText,
    required this.extraText,
    this.tabTextOnTap,
  });
  final String headerText;
  final String tabText;
  final String extraText;
  final Function()? tabTextOnTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText,
          style: const TextStyle(
              color: whiteColor, fontSize: 38, fontWeight: FontWeight.w600),
        ),
        InkWell(
          onTap: tabTextOnTap,
          child: RichText(
              text: TextSpan(
                  text: tabText,
                  style: const TextStyle(
                      color: whiteColor,
                      fontSize: 18,
                      decoration: TextDecoration.underline),
                  children: [
                TextSpan(
                    text: extraText,
                    style: const TextStyle(
                        color: whiteColor,
                        fontSize: 18,
                        decoration: TextDecoration.none))
              ])),
        ),
      ],
    );
  }
}
