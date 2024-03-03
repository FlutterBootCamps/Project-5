import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';

class PlaneTicket extends StatelessWidget {
  PlaneTicket({
    super.key,
    this.onTap,
    required this.endTime,
    required this.fromCity,
    required this.toCity,
    required this.price,
    required this.startTime,
    required this.stop,
    required this.totalTime,
  });
  String fromCity;
  String toCity;
  String startTime;
  String endTime;
  String totalTime;
  String stop;
  double price;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerRight,
        width: context.getWidth(),
        height: context.getHeight() * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(stop),
                Container(
                  child: Row(
                    children: [
                      Text(
                        endTime,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      Transform.rotate(
                        angle: 270 * pi / 180,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: textColor.withOpacity(0.4),
                          size: 20,
                        ),
                      ),
                      Text(
                        startTime,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(totalTime),
                Text("$toCity إلى $fromCity"),
              ],
            ),
            Divider(
              color: textColor.withOpacity(0.4),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  " SAR ${price}",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
