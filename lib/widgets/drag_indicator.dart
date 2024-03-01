import 'package:flutter/material.dart';

class DragIndicator extends StatelessWidget {
  const DragIndicator({
    super.key, required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 5,
      decoration: BoxDecoration(color: color, borderRadius: const BorderRadius.all(Radius.circular(40))),
    );
  }
}