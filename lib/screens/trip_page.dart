import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/screens/add_trip_page.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';
import 'package:project_5/widgets/main_drawer.dart';
import 'package:project_5/widgets/vector_text.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder( //Wrapping the button with a builder enables us to open the drawer normally
          builder: (context) {
          return IconButtonUnpadded(
            icon: const Icon(
              Icons.menu_rounded,
              color: iconSignatureGreenColor,
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 28,
            ),
            const Text(
              "Trips",
              style: TextStyle(
                  color: whiteColor, fontSize: 32, fontWeight: FontWeight.w600),
            ),
            const VectorText(
              image: "assets/images/man_traveling.png",
              topText: "No trips found",
              bottomText: "Add an upcoming trip or book a new flight",
            ),
            const SizedBox(height: 32,),
            BottomButton(
              text: "Add a trip",
              color: buttonSignatureGreenColor,
              onTap: () {
                context.push(context, AddTripPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}


