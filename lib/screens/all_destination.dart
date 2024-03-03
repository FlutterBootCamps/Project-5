import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/widget/fares_from_city_widget.dart';

class AllDestination extends StatelessWidget {
  const AllDestination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
        ),
      ),
      body: const Column(
        children: [
          FaresFromCity(),
        ],
      ),
    );
  }
}
