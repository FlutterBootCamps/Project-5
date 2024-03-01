import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/icon_text_bar.dart';
import 'package:project_5/widgets/text_button_bar.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: drawerBgColor,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: inactiveGreyColor, width: 2))),
            padding: EdgeInsets.zero,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/saudia_logo.png",
                      width: 140,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Image.asset(
                        "assets/images/skyteam_logo.png",
                        width: 30,
                      ),
                    ),
                  ],
                ),
                TextButtonBar(
                  onTap: (){},
                  text: "Travel Requirements",
                  isIconShown: true,
                  textColor: blurpleTextColor,
                  iconColor: blurpleTextColor,
                  bgColor: darkBlurpleColor,
                  icon: Icons.info_outline,
                  radius: 4,
                  padding: const EdgeInsets.all(8),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Flight Information",
            style: TextStyle(
              color: brightGreyColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          IconTextBar(
            text: "Track baggage",
            icon: FontAwesomeIcons.suitcaseRolling,
            isLink: false,
            onTap: () {},
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            "Additional Information",
            style: TextStyle(
              color: brightGreyColor,
              fontSize: 14,
            ),
          ),
          IconTextBar(
            text: "Hotels",
            icon: Icons.hotel_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Car rental",
            icon: Icons.drive_eta_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Holidays",
            icon: FontAwesomeIcons.umbrellaBeach,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Umrah",
            icon: Icons.mosque_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Travel Insurance",
            icon: Icons.shield_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "NUSUK with Saudia",
            icon: Icons.layers_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "SaudiaBEYOND",
            icon: Icons.movie_creation_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Car rental",
            icon: Icons.drive_eta_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Stopover Visa",
            icon: Icons.fact_check_outlined,
            isLink: true,
            onTap: () {},
          ),
          IconTextBar(
            text: "Altanfeethi",
            icon: Icons.star_border,
            isLink: true,
            onTap: () {},
          ),
          const Divider(
            color: inactiveGreyColor,
            thickness: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            "Help & Settings",
            style: TextStyle(
              color: brightGreyColor,
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          IconTextBar(
            text: "Live chat",
            icon: Icons.support_agent_outlined,
            isLink: false,
            onTap: () {},
          ),
          IconTextBar(
            text: "Settings",
            icon: Icons.settings_outlined,
            isLink: false,
            onTap: () {},
          ),
          IconTextBar(
            text: "About Saudia App",
            icon: Icons.info_outline,
            isLink: false,
            onTap: () {},
          ),
          IconTextBar(
            text: "Help & Support",
            icon: Icons.support,
            isLink: false,
            onTap: () {},
          ),
          const Divider(
            color: inactiveGreyColor,
            thickness: 1,
          ),
          IconTextBar(
            text: "Send feedback",
            icon: Icons.insert_comment_outlined,
            isLink: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
