import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/menu_card_eidget.dart';
import 'package:saudia_app_project_5/widget/title_menu_card_widget.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
      child: ListView(children: [
        Row(
          children: [
            SizedBox(
              width: context.getWidth() * 0.3,
              height: context.getWidth() * 0.3,
              child: SvgPicture.asset(
                "asset/images/logo_saudia.svg",
                colorFilter: const ColorFilter.mode(green, BlendMode.srcIn),
              ),
            ),
            width8,
            SizedBox(
              width: context.getWidth() * 0.07,
              height: context.getWidth() * 0.07,
              child: SvgPicture.asset(
                "asset/images/sky_team_logo.svg",
                colorFilter: const ColorFilter.mode(green, BlendMode.srcIn),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: lightblue,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Travel requirements",
                  style: TextStyle(
                      color: blue, fontSize: 16, fontWeight: FontWeight.w300),
                ),
                Icon(
                  Icons.error_outline,
                  color: blue,
                ),
              ]),
        ),
        height12,
        Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: lightblue, width: 1))),
        ),
        const TitleMenu(title: "Flight Information"),
        const MenuCard(
            titleMenu: "Track baggage",
            icon: Icons.shopping_bag_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        const TitleMenu(title: "Additional Services"),
        const MenuCard(
            titleMenu: "Hotels",
            icon: Icons.bed_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Car rental",
            icon: Icons.car_rental_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Holidays",
            icon: Icons.umbrella,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Umrah",
            icon: Icons.mosque_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Travel insurance",
            icon: Icons.verified_user_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "NUSUK with Saudia",
            icon: Icons.layers_outlined,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Stoponer Visa",
            icon: Icons.domain_verification_sharp,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        const MenuCard(
            titleMenu: "Altanfeethi",
            icon: Icons.alt_route_rounded,
            url:
                "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
            arrowIcon: Icons.arrow_outward_rounded),
        height12,
        Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: lightblue, width: 1))),
        ),
        height12,
        const TitleMenu(title: "Help & Setting"),
        const MenuCard(
          titleMenu: "Live Chat",
          icon: Icons.chat,
          url:
              "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
        ),
        height12,
        const MenuCard(
          titleMenu: "Setting",
          icon: Icons.settings,
          url:
              "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
        ),
        height12,
        const MenuCard(
          titleMenu: "About Saudia App",
          icon: Icons.error_outline,
          url:
              "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
        ),
        height12,
        const MenuCard(
          titleMenu: "Help & support",
          icon: Icons.support,
          url:
              "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
        ),
        height12,
        Container(
          decoration: const BoxDecoration(
              border: Border(top: BorderSide(color: lightblue, width: 1))),
        ),
        height12,
        const MenuCard(
          titleMenu: "Send feedback",
          icon: Icons.chat_outlined,
          url:
              "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE",
        ),
      ]),
    );
  }
}
