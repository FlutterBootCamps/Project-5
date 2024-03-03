import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/screens/all_destination.dart';

class ExploreAllDestination extends StatelessWidget {
  const ExploreAllDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushTo(view: const AllDestination());
      },
      child: const Text(
        "Explore all destination",
        style: TextStyle(
            decoration: TextDecoration.underline, color: green, fontSize: 18),
      ),
    );
  }
}
