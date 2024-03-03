import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/model/saudia_model.dart';
import 'package:saudia_app_project_5/widget/from_travel_widget.dart';
import 'package:saudia_app_project_5/widget/to_travel_widget.dart';

class TravelCities extends StatelessWidget {
  TravelCities(
      {super.key,
      this.city,
      required this.fromCity,
      required this.cityCode1,
      required this.cityCode2,
      required this.toCity});
  String cityCode1;
  String fromCity;
  String cityCode2;
  String toCity;
  SaudiaModel? city;

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();

    SaudiaModel? travel;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Stack(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(24.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: const Text(
                                          "Done",
                                          style: TextStyle(
                                              color: green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Text(
                                    "From",
                                    style: TextStyle(
                                        color: black,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: serviceLocator.cities.length,
                                    itemBuilder: (context, index) {
                                      return FromTravel(
                                        selectedCity: index,
                                        cityName: serviceLocator
                                            .cities[index].cityName,
                                        country: serviceLocator
                                            .cities[index].country!,
                                        airport: serviceLocator
                                            .cities[index].airport!,
                                        cityCode: serviceLocator
                                            .cities[index].cityCode!,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      width: context.getWidth() * 0.40,
                      height: context.getWidth() * 0.25,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("From",
                                style: TextStyle(color: grey, fontSize: 16)),
                            Text(
                                "${serviceLocator.cities[bloc.cityIndex].cityCode}",
                                style: const TextStyle(
                                    color: black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700)),
                            Text(serviceLocator.cities[bloc.cityIndex].cityName,
                                style:
                                    const TextStyle(color: grey, fontSize: 16)),
                          ]),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text(
                                        "Done",
                                        style: TextStyle(
                                            color: green,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      ),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "To",
                                  style: TextStyle(
                                      color: black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: serviceLocator.cities
                                      .where((element) =>
                                          element.cityName ==
                                          bloc.mainCities[bloc.cityIndex])
                                      .first
                                      .availableCities!
                                      .length,
                                  itemBuilder: ((context, index) {
                                    for (var travelCity
                                        in serviceLocator.cities) {
                                      if (travelCity.cityName ==
                                          bloc.mainCities[bloc.cityIndex]) {
                                        travel =
                                            travelCity.availableCities![index];
                                      }
                                    }
                                    return ToTravel(
                                      selectedCity: index,
                                      cityName: travel!.cityName,
                                      country: travel!.country!,
                                      airport: travel!.airport!,
                                      cityCode: travel!.cityCode!,
                                    );
                                  }),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      width: context.getWidth() * 0.40,
                      height: context.getWidth() * 0.25,
                      decoration: const BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: BlocBuilder<SaudiaBloc, SaudiaState>(
                        builder: (context, state) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("To",
                                  style: TextStyle(color: grey, fontSize: 16)),
                              Text("${serviceLocator.cities[bloc.cityIndex1].availableCities![bloc.cityIndex1].cityCode}",
                                // cityCode2,
                                  style: const TextStyle(
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700)),
                              Text(
                              "${serviceLocator.cities[bloc.cityIndex1].availableCities![bloc.cityIndex1].cityCode}",
                                // toCity,
                                  style: const TextStyle(
                                      color: grey, fontSize: 16)),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 140,
            child: Container(
              width: context.getWidth() * 0.15,
              height: context.getWidth() * 0.15,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(color: lightgrey, spreadRadius: 1, blurRadius: 8)
                ],
                shape: BoxShape.circle,
                color: white,
              ),
              child: const Icon(
                Icons.compare_arrows_outlined,
                color: green,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
