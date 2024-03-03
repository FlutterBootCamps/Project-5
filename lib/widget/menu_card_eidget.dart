import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';

class MenuCard extends StatelessWidget {
  const MenuCard(
      {super.key,
      required this.titleMenu,
      required this.icon,
      required this.url, this.arrowIcon});
  final String titleMenu;
  final IconData icon;
  final IconData? arrowIcon;
  final String url;

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();

    return InkWell(
      onTap: () {
        serviceLocator.launchGoogleURL(url: url);
        // "https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwiNttSm39KEAxUxakECHb5tBHcYABABGgJ3cw&ase=2&gclid=CjwKCAiAloavBhBOEiwAbtAJOywREdqoaFb8vUMNB88Tvq2Uy1Q2nj5iD-431TcAWouAOKP4RJIoshoC5eQQAvD_BwE&ohost=www.google.com&cid=CAESV-D2kghDnu-jmYi7POoVcTggpGd8AR1yfZn3g252AgU-eSx0OepEK38O0FTfRkmFyQ9S7XUAuaHoHDgmjpQKuzM4EFt1ZAV1Kv58gTMzOkQDaTPSC7gLdg&sig=AOD64_0bCij_gkt817z7flozjboB4_Lxaw&q&nis=4&adurl&ved=2ahUKEwiksc6m39KEAxVETqQEHcVRCl8Q0Qx6BAgREAE");
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              // Icons.bed_outlined,
              color: green,
            ),
            width12,
            Text(
              titleMenu,
              style: const TextStyle(
                  color: black, fontSize: 16, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Icon(
          arrowIcon,
          // Icons.arrow_outward_rounded,
          color: grey,
        ),
      ]),
    );
  }
}
