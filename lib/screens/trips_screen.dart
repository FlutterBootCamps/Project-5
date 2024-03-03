import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/screens/add_trip.dart';
import 'package:saudia_app_project_5/widget/drawer_menu.dart';
import 'package:saudia_app_project_5/widget/menu_widget.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      appBar: AppBar(
        backgroundColor: bgGrey,
        leading: Menu(color: green),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Trips",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Image.asset("asset/images/no_trip1.jpg"),
                    height8,
                    const Text(
                      "No Trips found",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    // height8,
                    const Text(
                      "Add an upcoming trip or book a new flight",
                      style: TextStyle(color: grey, fontSize: 16),
                    ),
                    height24,
                    InkWell(
                      onTap: () {
                        context.pushTo(view: const AddTrip());
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        width: context.getWidth(),
                        height: context.getWidth() * 0.15,
                        alignment: Alignment.center,
                        child: const Text(
                          "Add a trip",
                          style: TextStyle(
                              color: white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
