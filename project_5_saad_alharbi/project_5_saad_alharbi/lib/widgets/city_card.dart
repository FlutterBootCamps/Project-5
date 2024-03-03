import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';

// ignore: must_be_immutable
class CityCard extends StatelessWidget {
   CityCard({super.key, required this.cityName, required this.imagePath, required this.price , required this.onTap});
  String imagePath;
  String cityName;
  double price;
  Function() onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        width: context.getWidth(),
        height: 200,
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: context.getWidth(),
            ),
            Container(
              alignment: Alignment.centerRight,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black12, Colors.black])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                   cityName,
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Text(
                    textAlign: TextAlign.right,
                    "رحلة ذهاب وعودة بدا من ${price}",
                    style: TextStyle(
                        color: textColor.withOpacity(0.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
