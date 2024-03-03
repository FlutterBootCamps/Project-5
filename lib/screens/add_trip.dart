import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/widget/bottom_sheet_check_in_and_trip.dart';

class AddTrip extends StatelessWidget {
  const AddTrip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: green,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Add a trip",
                style: TextStyle(
                    color: black, fontSize: 30, fontWeight: FontWeight.w900),
              ),
              height12,
              const Text(
                "Retrieve a booking and add it to your trips.",
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w200),
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetTip(
                          superTitle: "How to add a trip",
                          description:
                              "Add a trip by providing any of the 4 options below.",
                          title1: "Booking reference",
                          subTitle1: "6 characters",
                          title2: "Numeric booking reference",
                          subTitle2: "12 digits",
                          title3: "E-ticket number",
                          subTitle3: "13 digits (starting with 065)",
                          title4: "Frequent flyer number",
                          subTitle4: "1234567890",
                        );
                      });
                },
                child: const Text(
                  "Tell me more",
                  style: TextStyle(
                      color: green, fontSize: 16, fontWeight: FontWeight.w200),
                ),
              ),
              height48,

            ],
          ),
        ),
      ),
    );
  }
}
