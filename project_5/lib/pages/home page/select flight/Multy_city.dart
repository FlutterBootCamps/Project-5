import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/data/data_layer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:project_5/data/data_model.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/select%20flight/bloc/select_flight_bloc.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/has_city.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/passengers_widget.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/show_pottom.dart';

class MultiCityPage extends StatelessWidget {
  const MultiCityPage({super.key, this.city1, this.city2});
  final String? city1;
  final String? city2;
  @override
  Widget build(BuildContext context) {
    final Get = GetIt.I.get<AllData>();
    CityModel? firstCity;
    CityModel? SecondCity;

    return BlocBuilder<SelectFlightBloc, SelectFlightState>(
      builder: (context, state) {
        final DateTime now = DateTime.now();
        final bloc = context.read<SelectFlightBloc>();
        if (city1 != null && city2 != null) {
          bloc.city = city1!;
          bloc.city2 = city2!;
          bloc.isCity1 = true;
          bloc.isCity2 = true;
          firstCity = Get.cities
              .where((element) => element.cityName == bloc.city)
              .first;
          SecondCity = Get.cities
              .where((element) => element.cityName == bloc.city2)
              .first;
        } else {
          firstCity = Get.cities
              .where((element) => element.cityName == bloc.city)
              .first;
          SecondCity = Get.cities
              .where((element) => element.cityName == bloc.city2)
              .first;
        }
        bool isCity1 = bloc.isCity1;
        bool isCity2 = bloc.isCity2;
        DateTime startDate = bloc.startDateB;
        DateTime endDate = bloc.endDateB;
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return ShowBottom(
                                  text: "From",
                                  number: 1,
                                );
                              });
                        },
                        child: Container(
                          height: context.getWidth() / 3.5,
                          width: context.getWidth() / 2.4,
                          color: isCity1 ? container : container2,
                          child: isCity1
                              ? HasCity(
                                  cityName: firstCity!.cityName,
                                  cityCut: firstCity!.cityCut,
                                  top: "from",
                                )
                              : Center(
                                  child: Text(
                                    "please select a city",
                                    style: TextStyle(
                                        color: containertext, fontSize: 14),
                                  ),
                                ),
                        ),
                      ),
                      gapW20,
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return ShowBottom(
                                  text: "To",
                                  number: 2,
                                );
                              });
                        },
                        child: Container(
                            height: context.getWidth() / 3.5,
                            width: context.getWidth() / 2.4,
                            color: isCity2 ? container : container2,
                            child: isCity2
                                ? HasCity(
                                    cityName: SecondCity!.cityName,
                                    cityCut: SecondCity!.cityCut,
                                    top: "to",
                                  )
                                : Center(
                                    child: Text(
                                      "please select a city",
                                      style: TextStyle(
                                          color: containertext, fontSize: 14),
                                    ),
                                  )),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      bloc.add(CitySwapEvent());
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 54, 53, 53),
                          blurRadius: 0.5,
                          offset: Offset(0, 0), // Shadow position
                        ),
                      ], color: cityArrow, shape: BoxShape.circle),
                      child: Icon(
                        Icons.compare_arrows,
                        color: green,
                      ),
                    ),
                  )
                ],
              ),
              gapH20,
              InkWell(
                onTap: () {
                  showDatePicker(
                    context: context,
                    firstDate: now,
                    lastDate: DateTime(2025),
                    builder: (context, child) {
                      return Theme(
                        data: ThemeData.dark().copyWith(
                          colorScheme: ColorScheme.dark(
                              onPrimary: Colors.black,
                              onSurfaceVariant: Colors.white,
                              primary: green),
                          dialogBackgroundColor: background,
                        ),
                        child: child!,
                      );
                    },
                  ).then((value) => {
                        if (value == null)
                          {}
                        else
                          {
                            startDate = value,
                            bloc.add(SelectDateEvent(
                                startDateEvent: startDate,
                                endDateEvent: endDate))
                          }
                      });
                },
                child: Container(
                    height: context.getWidth() / 7.5,
                    width: context.getWidth(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: container,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "travel dates",
                              style:
                                  TextStyle(color: containertext, fontSize: 14),
                            ),
                            Text(
                              "${startDate.day} / ${startDate.month}  ",
                              style: TextStyle(color: whit, fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.calendar_today,
                          color: calender,
                          size: 30,
                        )
                      ],
                    )),
              ),
              gapH20,
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return const Passengers();
                      });
                },
                child: Container(
                    height: context.getWidth() / 7.5,
                    width: context.getWidth(),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: container,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Passengers and Class",
                              style:
                                  TextStyle(color: containertext, fontSize: 14),
                            ),
                            Text(
                              "1 Passenger, Guest Class",
                              style: TextStyle(color: whit, fontSize: 17),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: green,
                          size: 30,
                        )
                      ],
                    )),
              ),
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              gapH20,
              Container(
                color: background,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Book with AlFursan Miles",
                          style: TextStyle(color: containertext, fontSize: 17),
                        ),
                        Switch(
                          onChanged: (value) {},
                          value: false,
                        )
                      ],
                    ),
                    gapH10,
                    InkWell(
                      onTap: () {
                        context.pop();
                      },
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        height: context.getWidth() / 13,
                        width: context.getWidth(),
                        decoration: BoxDecoration(
                          color: green,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.search,
                                  size: 20,
                                  color: whit,
                                ),
                                gapW20,
                                gapW20,
                                gapW20,
                                gapW20,
                                gapW20,
                                Text(
                                  "Search flights",
                                  style: GoogleFonts.notoSerifKannada(
                                      color: whit,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
