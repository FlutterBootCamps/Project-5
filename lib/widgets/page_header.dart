import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key, required this.header, required this.description,
  });
  final String header;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: const TextStyle(
              color: whiteColor, fontSize: 32, fontWeight: FontWeight.w600),
        ),
        Text(
          description,
          style: const TextStyle(color: greyTextColor, fontSize: 16),
        ),
      ],
    );
  }
}
