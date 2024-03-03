
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/widgets/menu_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: background,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(shrinkWrap: true, children: [
            Row(
              children: [
                Image.asset(
                  "assets/saudia_logo_dark_footer (1).png",
                  // fit: BoxFit.cover,
                  height: context.getWidth() / 3,
                  width: context.getWidth() / 3,
                ),
                gapW20,
                SvgPicture.asset("assets/logo.svg",
                    height: context.getWidth() / 11,
                    width: context.getWidth() / 11,
                    colorFilter: ColorFilter.mode(whit, BlendMode.srcIn)),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: context.getWidth() / 10,
              width: context.getWidth(),
              decoration: BoxDecoration(
                  color: blue2, borderRadius: BorderRadius.circular(10)),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Travel requirements",
                      style: GoogleFonts.notoSerifKannada(
                          color: blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.info_outline,
                      color: blue,
                    ),
                  ]),
            ),
            gapH15,
            Divider(
              color: div,
              thickness: 1,
            ),
            gapH15,
            MenuItems(
              title: "Track baggage",
              icon: FontAwesomeIcons.suitcaseRolling,
              Link: false,
              onTap: () {},
            ),
            gapH15,
            Text(
              "Additional Information",
              style: TextStyle(
                color: containertext,
                fontSize: 14,
              ),
            ),
            gapH15,
            MenuItems(
              title: "Hotels",
              icon: Icons.hotel_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Car rental",
              icon: Icons.drive_eta_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Holidays",
              icon: FontAwesomeIcons.umbrellaBeach,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Umrah",
              icon: Icons.mosque_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Travel Insurance",
              icon: Icons.shield_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "NUSUK with Saudia",
              icon: Icons.layers_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "SaudiaBEYOND",
              icon: Icons.movie_creation_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Car rental",
              icon: Icons.drive_eta_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Stopover Visa",
              icon: Icons.fact_check_outlined,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Altanfeethi",
              icon: Icons.star_border,
              Link: true,
              onTap: () {},
            ),
            gapH15,
            Divider(
              color: div,
              thickness: 1,
            ),
            gapH15,
            Text(
              "Help & Settings",
              style: TextStyle(
                color: containertext,
                fontSize: 14,
              ),
            ),
            gapH15,
            MenuItems(
              title: "Live chat",
              icon: Icons.support_agent_outlined,
              Link: false,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Settings",
              icon: Icons.settings_outlined,
              Link: false,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "About Saudia App",
              icon: Icons.info_outline,
              Link: false,
              onTap: () {},
            ),
            gapH15,
            MenuItems(
              title: "Help & Support",
              icon: Icons.support,
              Link: false,
              onTap: () {},
            ),
            gapH15,
            Divider(
              color: div,
              thickness: 1,
            ),
            gapH15,
            MenuItems(
              title: "Send feedback",
              icon: Icons.insert_comment_outlined,
              Link: false,
              onTap: () {},
            ),
          ]),
        ),
      );
  }
}