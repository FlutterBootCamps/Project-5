
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({
    super.key,
    required this.Type,
  });
  final String Type;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Type,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        const Spacer(),
        const Text(
          "View All",
          style: TextStyle(color: Colors.lightBlue),
        )
      ],
    );
  }
}