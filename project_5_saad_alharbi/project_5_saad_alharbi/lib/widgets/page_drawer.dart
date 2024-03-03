import 'package:flutter/material.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/widgets/drawer_header_container.dart';

class PageDrawer extends StatelessWidget {
   PageDrawer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: blackmode,
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              DrawerHeaderContainer(),
            ],
          ),
        ),
      ),
    );
  }
}
