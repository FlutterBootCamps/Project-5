import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/widgets/drawer_widget.dart';

class TripsPage extends StatelessWidget {
  TripsPage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: background,
      drawer: const DrawerWidget(),
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: green,
              size: 30,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(shrinkWrap: true, children: [
          Text(
            "Trips",
            textAlign: TextAlign.start,
            style: GoogleFonts.philosopher(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          ),
          Image.asset(
            "assets/trip.png",
            height: context.getHeight() / 1.6,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              "No trips found",
              style: GoogleFonts.notoSerifKannada(
                  color: whit, fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          gapH10,
          Center(
            child: Text(
              "add an upcoming trip or book a new flight",
              style: GoogleFonts.notoSerifKannada(
                  color: containertext,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ),
          gapH10,
          gapH10,
          gapH10,
          gapH10,
          Container(
            padding: const EdgeInsets.all(5),
            height: context.getWidth() / 13,
            width: context.getWidth(),
            decoration: BoxDecoration(
              color: green,
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  "Add a trip",
                  style: GoogleFonts.notoSerifKannada(
                      color: whit, fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
