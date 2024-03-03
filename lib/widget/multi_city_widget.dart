import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/widget/date_picker_single_date_widget.dart';
import 'package:saudia_app_project_5/widget/one_way_widget.dart';
import 'package:saudia_app_project_5/widget/travel_cities.dart';

class MultiCity extends StatelessWidget {
  const MultiCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30),
                child: Text(
                  "Flight 1",
                  style: TextStyle(
                      color: black, fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              TravelCities(
                fromCity: "Riyadh", // city.cityName,
                cityCode1: "RUH",
                toCity: "Bahrain",
                cityCode2: "BAH",
              ),
              const SingleDayDatePicker(),
              height16,
              const Padding(
                padding: 
                 EdgeInsets.only(left:30.0,top: 10),
                child: Text(
                  "Flight 2",
                  style: TextStyle(
                      color: black, fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              const OneWay(),
              height24,
            ],
          ),
        ],
      ),
    );
  }
}
