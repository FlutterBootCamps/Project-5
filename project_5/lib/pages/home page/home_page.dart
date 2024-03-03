import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/data/data_layer.dart';
import 'package:project_5/data/data_model.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/bloc/home_bloc.dart';
import 'package:project_5/pages/home%20page/select%20flight/Select_flight._page.dart';
import 'package:project_5/pages/home%20page/widgets/chose_city_widget.dart';
import 'package:project_5/pages/home%20page/widgets/city_card.dart';
import 'package:project_5/pages/widgets/drawer_widget.dart';
import 'package:project_5/pages/home%20page/widgets/new_widget.dart';
import 'package:project_5/pages/home%20page/widgets/welcoming_widget.dart';
import 'dart:math' as math;

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();
    final Get = GetIt.I.get<AllData>();
    bloc.add(ChangeCityEvent());
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: background,
      drawer: const DrawerWidget(),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/fair.jpeg"), fit: BoxFit.cover)),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: whit,
                            size: 30,
                          )),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: context.getWidth() / 16,
                        width: context.getWidth() / 5,
                        decoration: BoxDecoration(
                          color: green,
                        ),
                        child: Center(
                          child: Text(
                            "Check-in",
                            style: GoogleFonts.notoSerifKannada(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Welcoming(),
                  InkWell(
                    onTap: () {
                      context.pushTo(view: const SelectFlight());
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: context.getWidth() / 10,
                      width: context.getWidth(),
                      decoration: BoxDecoration(
                        color: container,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Book a flight",
                              style: GoogleFonts.notoSerifKannada(
                                  color: containertext,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300),
                            ),
                            Transform.rotate(
                              angle: -40 * math.pi / -16,
                              child: IconButton(
                                icon: Icon(
                                  Icons.flight_sharp,
                                  color: green,
                                ),
                                onPressed: null,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  gapH20,
                  Text(
                    "What's New",
                    style: GoogleFonts.notoSerifKannada(
                        color: whit, fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                ...List.generate(Get.whatsNew.length, (index) {
                  return NewContainer(
                    image: Get.whatsNew[index].imagePath,
                    text1: Get.whatsNew[index].title,
                    text2: Get.whatsNew[index].supTitle,
                    link: Get.whatsNew[index].link,
                  );
                })
              ]),
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Fares from ",
                            style: GoogleFonts.notoSerifKannada(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  showDragHandle: false,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      height: context.getHeight() * 0.28,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 16, horizontal: 24),
                                      decoration: BoxDecoration(
                                          color: bottom,
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20))),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Select a city",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: containertext,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              ),
                                              Container(
                                                height:
                                                    context.getWidth() * 0.06,
                                                width:
                                                    context.getWidth() * 0.06,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: whit,
                                                ),
                                                child: InkWell(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Icon(
                                                      Icons.close,
                                                      color: containertext,
                                                      size: 20,
                                                    )),
                                              ),
                                            ],
                                          ),
                                          gapH10,
                                          Container(
                                            decoration: BoxDecoration(
                                              border: Border(
                                                bottom: BorderSide(
                                                    color: containertext
                                                        .withOpacity(.5),
                                                    width: 0.5),
                                              ),
                                            ),
                                          ),
                                          gapH20,
                                          ChooseCity(
                                            index: 0,
                                            cityName: "Dammam",
                                            selected: bloc.selectIndex == 0
                                                ? true
                                                : false,
                                          ),
                                          gapH10,
                                          ChooseCity(
                                            index: 1,
                                            cityName: "Jeddah",
                                            selected: bloc.selectIndex == 1
                                                ? true
                                                : false,
                                          ),
                                          gapH10,
                                          ChooseCity(
                                            index: 2,
                                            cityName: "Madinah",
                                            selected: bloc.selectIndex == 2
                                                ? true
                                                : false,
                                          ),
                                          gapH10,
                                          ChooseCity(
                                            index: 3,
                                            cityName: "Riyadh",
                                            selected: bloc.selectIndex == 3
                                                ? true
                                                : false,
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Row(
                              children: [
                                Text(bloc.cities[bloc.selectIndex],
                                    style: GoogleFonts.notoSerifKannada(
                                        decoration: TextDecoration.underline,
                                        decorationColor: whit,
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500)),
                                Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: whit,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: Get.cities
                            .where((element) =>
                                element.cityName ==
                                bloc.cities[bloc.selectIndex])
                            .first
                            .traveler!
                            .length,
                        itemBuilder: (context, index) {
                          CityModel? tolist;
                          for (var city in Get.cities) {
                            if (city.cityName ==
                                bloc.cities[bloc.selectIndex]) {
                              tolist = city.traveler![index];
                            }
                          }
                          return CityCards(
                            city1: bloc.cities[bloc.selectIndex],
                            image: tolist!.image!,
                            price: tolist.price!,
                            text1: tolist.cityName,
                          );
                        },
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
