import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/dataset/whats_new_data.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/model/saudia_model.dart';
import 'package:saudia_app_project_5/screens/book_flight_screen.dart';
import 'package:saudia_app_project_5/screens/online_check_in.dart';
import 'package:saudia_app_project_5/widget/city_card_widget.dart';
import 'package:saudia_app_project_5/widget/drawer_menu.dart';
import 'package:saudia_app_project_5/widget/menu_widget.dart';
import 'package:saudia_app_project_5/widget/select_city.dart';
import 'dart:math' as math;

import 'package:saudia_app_project_5/widget/whats_new_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();
    SaudiaModel? travel;


    return Scaffold(
      backgroundColor: bgGrey,
      drawer: const Drawer(
        child: DrawerMenu(),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
                  width: context.getWidth(),
                  height: context.getHeight() * 0.85,
                  child: Stack(
                    children: [
                      Image.asset(
                        "asset/images/bgRiyadh.jpg", //bgRiyadh.jpg",
                        height: context.getHeight() * 0.66,
                        width: context.getWidth(),
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 20,
                        left: 20,
                        right: 15,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Menu(
                              color: white,
                            ),
                            InkWell(
                              onTap: () {
                                context.pushTo(view: const OnlineCheckIn());
                              },
                              child: Container(
                                width: context.getWidth() * 0.30,
                                height: context.getWidth() * 0.1,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: green,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: const Text(
                                  " Chech-in",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 100,
                        left: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Welcome",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "to Saudia",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700),
                            ),
                            height12,
                            Row(children: [
                              RichText(
                                text: const TextSpan(
                                  text: "Join AlFursan",
                                  style: TextStyle(
                                      color: white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.underline,
                                      decorationColor: white,
                                      decorationThickness: 2),
                                ),
                              ),
                              const Text(
                                " to enjoy exclusive privileges.",
                                style: TextStyle(
                                    color: white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                            ]),
                            height32,
                            Center(
                              child: InkWell(
                                onTap: () {
                                  context.pushTo(view: BookFlightScreen());
                                },
                                child: Container(
                                  width: context.getWidth() * 0.90,
                                  height: context.getWidth() * 0.15,
                                  decoration: const BoxDecoration(
                                    color: white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Book a flight",
                                          style: TextStyle(
                                              color: black, fontSize: 16),
                                        ),
                                        Transform.rotate(
                                          angle: 90 * math.pi / 180,
                                          child: const Icon(
                                            Icons.airplanemode_active_outlined,
                                            color: green,
                                            size: 30,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            height48,
                            const Text(
                              "What's New",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        child: SizedBox(
                          height: context.getWidth() * 0.7,
                          width: context.getWidth(),
                          child:                      
                              ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: whatsNewDataCard.length,
                            itemBuilder: (context, index) => WhatsNew(
                              title: whatsNewDataCard[index]["title"]!,
                              description: whatsNewDataCard[index]
                                  ["description"]!,
                              imagePath: whatsNewDataCard[index]["imagePath"]!,
                              url: whatsNewDataCard[index]["url"]!,
                              height: context.getWidth() * 0.7,
                              width: context.getWidth() * 0.9,
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
                BlocBuilder<SaudiaBloc, SaudiaState>(builder: (context, state) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                    child: Column(children: [
                      Row(
                        children: [
                          const Text(
                            "Fares From",
                            style: TextStyle(
                                color: black,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          ),
                          width8,
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  showDragHandle: false,
                                  // isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: context.getHeight() * 0.28,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 24),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Text(
                                                "Select a city",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: grey,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  height:
                                                      context.getWidth() * 0.06,
                                                  width:
                                                      context.getWidth() * 0.06,
                                                  decoration:
                                                      const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: grey,
                                                  ),
                                                  child: const Icon(
                                                    Icons.close,
                                                    color: white,
                                                    size: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          height8,
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: grey.withOpacity(.5),
                                                    width: 0.5),
                                              ),
                                            ),
                                          ),
                                          height16,
                                          SelctCity(
                                            selectedCity: 1,
                                            cityName: "Dammam",
                                             ),
                                          height12,
                                          SelctCity(
                                            selectedCity: 0,
                                            cityName: "Jeddah",
                                          ),
                                          height12,
                                          SelctCity(
                                            selectedCity: 2,
                                            cityName: "Madinah",
                                            ),
                                          height12,
                                          SelctCity(
                                            selectedCity: 3,
                                            cityName: "Riyadh",
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Row(
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
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 

                              serviceLocator.cities
                                  .where((element) =>
                                      element.cityName ==
                                      bloc.mainCities[bloc.cityIndex])
                                  .first
                                  .availableCities!
                                  .length, 
                          itemBuilder: ((context, index) {
                            for (var travelCity in serviceLocator.cities) {
                              if (travelCity.cityName ==
                                  bloc.mainCities[bloc.cityIndex]) {
                                travel = travelCity.availableCities![index];
                              }
                            }
                            return CityCard(
                              selectedCity: index,
                              availableCities: travel!,
                              
                              );
                          })),
                    ]),
                    // ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
