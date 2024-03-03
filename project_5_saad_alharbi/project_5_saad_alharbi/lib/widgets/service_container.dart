import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';

// ignore: must_be_immutable
class ServiceContainer extends StatelessWidget {
  ServiceContainer(
      {super.key,
      required this.title,
      required this.startIcon,
      required this.endIcon});
  String title;
  IconData startIcon;
  IconData endIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                endIcon,
                color: textColor.withOpacity(0.3),
                size: 15,
              ),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    startIcon,
                    color: lightGreen,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
