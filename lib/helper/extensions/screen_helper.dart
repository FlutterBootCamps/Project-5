import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

extension Screen on BuildContext {
  double getWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  double getHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  push(BuildContext context, Widget view) {
    return Navigator.push(context, MaterialPageRoute(builder: (route) => view));
  }

  showSuccessSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        style: const TextStyle(
          color: whiteColor,
        ),
      ),
      backgroundColor: signatureGreenColor,
    ));
  }

  showErrorSnackBar(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        msg,
        style: const TextStyle(
          color: whiteColor,
        ),
      ),
      backgroundColor: redColor,
    ));
  }
}
