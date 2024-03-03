import 'package:flutter/material.dart';
import 'package:project_5/helper/colors.dart';

class Classes extends StatelessWidget {
  const Classes({super.key, required this.classes, this.isSelected = false});
  final String classes;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            classes,
            style: TextStyle(
                fontSize: 18, color: newColor, fontWeight: FontWeight.w500),
          ),
          Icon(
            Icons.done,
            color: isSelected ? green : Colors.transparent,
          ),
        ],
      ),
    );
    
  }
}
