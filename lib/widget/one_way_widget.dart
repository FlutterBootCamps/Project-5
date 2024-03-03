import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/date_picker_single_date_widget.dart';
import 'package:saudia_app_project_5/widget/passenger_bottom_sheet_widget.dart';
import 'package:saudia_app_project_5/widget/travel_cities.dart';

class OneWay extends StatelessWidget {
  const OneWay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TravelCities(
          fromCity: "Riyadh", // city.cityName,
          cityCode1: "RUH",
          toCity: "Bahrain",
          cityCode2: "BAH",
        ),
        const SingleDayDatePicker(),
        const PassengersBottomSheet(),
        height78,
        height48,
        SizedBox(
          width: context.getWidth() * 0.9,
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Book with AlFursan Miles",
                    style: TextStyle(
                        color: grey, fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              height12,
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.search_sharp,
                      color: white,
                      size: 35,
                    ),
                    width32,
                    width24,
                    width8,
                    Text(
                      "Search flights",
                      style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
