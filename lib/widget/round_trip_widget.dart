import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/date_picker.dart';
import 'package:saudia_app_project_5/widget/passenger_bottom_sheet_widget.dart';
import 'package:saudia_app_project_5/widget/travel_cities.dart';

class RoundTrip extends StatelessWidget {
  const RoundTrip({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaudiaBloc>();

    return SizedBox(
      width: context.getWidth(),
      height: context.getHeight(),
      child: Stack(
        children: [
          Column(
            children: [
              InkWell(
                onTap: () {
                  Row(
                    children: [
                      Text(
                        bloc.mainCities[bloc.cityIndex],
                        style: const TextStyle(
                            decoration: TextDecoration.underline,
                            color: black,
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down_sharp,
                        color: black,
                      ),
                    ],
                  );
                },
                child: BlocBuilder<SaudiaBloc, SaudiaState>(
                  builder: (context, state) {
                    return BlocBuilder<SaudiaBloc, SaudiaState>(
                      builder: (context, state) {
                        return TravelCities(
                          fromCity: "Riyadh", // city.cityName,
                          cityCode1: "RUH",
                          toCity: "Bahrain",
                          cityCode2: "BAH",
                        );
                      },
                    );
                  },
                ),
              ),
              const DatePicker(),
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
                              color: grey,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
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
          ),
        ],
      ),
    );
  }
}
