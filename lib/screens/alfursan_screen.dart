import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/widget/drawer_menu.dart';
import 'package:saudia_app_project_5/widget/image_slider_widget.dart';
import 'package:saudia_app_project_5/widget/menu_widget.dart';

class AlFursanScreen extends StatelessWidget {
  const AlFursanScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();

    return Scaffold(
      backgroundColor: bgGrey,
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        backgroundColor: bgGrey,
        leading: Menu(color: green),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 16,color: green),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "AlForsan",
                      style: TextStyle(
                          color: black,
                          fontSize: 30,
                          fontWeight: FontWeight.w900),
                    ),
                    height12,
                    Text(
                      "Log in to view your Miles, book your next trip, and much more.",
                      style: TextStyle(
                          color: grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w200),
                    ),
                  ]),
            ),
            height48,
            ImageSlider(),
            // height16,
          ],
        ),
      ),
    );
  }
}
