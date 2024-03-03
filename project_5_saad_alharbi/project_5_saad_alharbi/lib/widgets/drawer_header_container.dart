import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';

import 'service_container.dart';

class DrawerHeaderContainer extends StatelessWidget {
  const DrawerHeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(top: 30),
      width: context.getWidth(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            "assets/images/SAA-removebg-preview.png",
            width: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 60, 74),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.info_outline,
                  color: Colors.lightBlue,
                ),
                Text(
                  "متطلبات السفر ",
                  style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
          ),
          Text(
            "معلومات الرحلة",
            style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          ServiceContainer(
            title: "تعقب الأمتعة",
            startIcon: Icons.shopping_bag_sharp,
            endIcon: Icons.arrow_back_ios,
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
          ),
          Text(
            "الخدمات الإضافية",
            style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          ServiceContainer(
            title: "الفنادق",
            startIcon: Icons.hotel,
            endIcon: Icons.arrow_outward,
          ),
          ServiceContainer(
            title: "استئجار السيارات",
            startIcon: Icons.car_crash,
            endIcon: Icons.arrow_outward,
          ),
          ServiceContainer(
            title: "العطلات",
            startIcon: Icons.umbrella_outlined,
            endIcon: Icons.arrow_outward,
          ),
          ServiceContainer(
            title: "العمرة",
            startIcon: Icons.house,
            endIcon: Icons.arrow_outward,
          ),
          Divider(
            color: Colors.white.withOpacity(0.3),
          ),
          Text(
            "الدعم",
            style: TextStyle(
                color: textColor.withOpacity(0.7),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          ServiceContainer(
            title: "المحادثة المباشرة",
            startIcon: Icons.support_agent,
            endIcon: Icons.arrow_outward,
          ),
          ServiceContainer(
            title: "الاعدادات",
            startIcon: Icons.settings,
            endIcon: Icons.arrow_outward,
          ),
          ServiceContainer(
            title: "المساعدة و الدعم",
            startIcon: Icons.support_outlined,
            endIcon: Icons.arrow_outward,
          ),
        ],
      ),
    );
  }
}
