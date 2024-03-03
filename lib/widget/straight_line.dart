import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';

class StraightLine extends StatelessWidget {
  const StraightLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: grey.withOpacity(.5), width: 0.5),
        ),
      ),
    );
  }
}
