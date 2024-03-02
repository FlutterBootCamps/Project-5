 import 'package:flutter/material.dart';

void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 800,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(24),
            height: 44,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // color: Colors.grey[850],
            ),
          ),
        );
      },
    );
  }