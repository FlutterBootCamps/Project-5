import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/bottom_sheet_check_in_and_trip.dart';

class OnlineCheckIn extends StatelessWidget {
  const OnlineCheckIn({super.key});

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
                "Online Check-in",
                style: TextStyle(
                    color: black, fontSize: 30, fontWeight: FontWeight.w900),
              ),
              height12,
              const Text(
                "Less stress. Less queuing. More time tp enjoy your trip.",
                style: TextStyle(
                    color: black, fontSize: 16, fontWeight: FontWeight.w200),
              ),
              height12,
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return BottomSheetTip(
                          superTitle: "Ho to Check-in",
                          description: "Check in by providing",
                          title1: "Booking reference",
                          subTitle1: "6 characters",
                          title2: "Numeric booking reference",
                          subTitle2: "12 digits",
                          title3: "Frequent flyer number",
                          subTitle3: "10 digits",
                          title4: "E-ticket number",
                          subTitle4: "13 digits (starting with 065)",
                        );
                      });
                },
                child: const Text(
                  "Tell me more",
                  style: TextStyle( decoration: TextDecoration.underline,
                      color: green, fontSize: 16, fontWeight: FontWeight.w200),
                ),
              ),
              height48,
              Container(
                padding: const EdgeInsets.all(8),

                decoration: const BoxDecoration(),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Booking reference"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
