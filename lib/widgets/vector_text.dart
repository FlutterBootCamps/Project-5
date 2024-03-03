import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class VectorText extends StatelessWidget {
  const VectorText({
    super.key,
    required this.image,
    required this.topText,
    required this.bottomText,
  });
  final String image;
  final String topText;
  final String bottomText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          Image.asset(
            image,
            width: 300,
            height: 400,
          ),
          Text(
            topText,
            style: const TextStyle(
                color: whiteColor, fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Text(
            bottomText,
            style: const TextStyle(color: greyTextColor, fontSize: 14),
          )
        ],
      ),
    );
  }
}
