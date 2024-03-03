import 'dart:math';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/model/city_model.dart';
import 'package:project_5_saad_alharbi/views/booking/bloc/booking_bloc.dart';
import 'package:project_5_saad_alharbi/views/booking/booking_screen.dart';
import 'package:project_5_saad_alharbi/views/home/bloc/home_bloc.dart';
import 'package:project_5_saad_alharbi/widgets/city_chooser_container.dart';

import '../../widgets/city_card.dart';
import '../../widgets/news_cards.dart';
import '../../widgets/page_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/backgroundimage.jpg"),
            fit: BoxFit.cover),
      ),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [Colors.black38, Colors.black87])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actionsIconTheme: IconThemeData(color: textColor),
            backgroundColor: Colors.transparent,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 110,
                  height: 50,
                  color: lightGreen,
                  child: Text(
                    textDirection: TextDirection.rtl,
                    maxLines: 1,
                    "اتمام إجراءات السفر عبر الإنترنت",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
          endDrawer: PageDrawer(),
          body: SingleChildScrollView(
            child: SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                margin: const EdgeInsets.only(top: 32),
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "أهلاً بك في السعودية",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 70),
                    ),
                    Text.rich(
                      textAlign: TextAlign.right,
                      TextSpan(
                        style: TextStyle(
                          fontSize: 24,
                          color: textColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'انضم إالى برنامج الفرسان',
                              style: TextStyle(
                                decorationColor: textColor,
                                decoration: TextDecoration.underline,
                              )),
                          const TextSpan(
                            text: '  للاستمتاع بالمزيد من المزايا الحصرية',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        width: context.getWidth(),
                        height: 60,
                        color: blackmode,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Transform.rotate(
                              angle: 270 * pi / 180,
                              child: Icon(
                                Icons.airplanemode_active,
                                color: lightGreen,
                              ),
                            ),
                            Text(
                              "احجز رحلة",
                              style: TextStyle(
                                  color: textColor.withOpacity(0.5),
                                  fontSize: 28),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        textAlign: TextAlign.right,
                        "أحدث العروض",
                        style: TextStyle(
                          color: textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: textColor,
                            ),
                          );
                        }
                        if (state is LoadedState) {
                          return SizedBox(
                            width: context.getWidth(),
                            height: 200,
                            child: Swiper(
                              itemCount: state.newList.length,
                              itemBuilder: (context, index) {
                                return NewsCards(news: state.newList[index]);
                              },
                            ),
                          );
                        }
                        return Center(
                          child: Text(
                            "No avalible data",
                            style: TextStyle(color: textColor),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const CityChooserContainer(),
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: textColor,
                            ),
                          );
                        }
                        if (state is LoadedState) {
                          var city =
                              GetIt.I.get<HomeData>().getCity(state.nameCity);
                          return ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: city.travelToList!.length,
                              itemBuilder: ((context, index) {
                                CityModel? toTravelCity;
                                for (var city in state.cityList) {
                                  if (city.cityName == state.nameCity) {
                                    toTravelCity = city.travelToList![index];
                                  }
                                }
                                return CityCard(
                                  cityName: toTravelCity!.cityName,
                                  imagePath: toTravelCity.image!,
                                  price: toTravelCity.price!,
                                  onTap: () {
                                    var fromCity = state.cityList.where(
                                        (element) =>
                                            element.cityName == state.nameCity);
                                    context.read<BookingBloc>().add(
                                        BookingLoadEvent(
                                            fromCity: fromCity.first.cityName!,
                                            toCity: toTravelCity!.cityName));
                                    context.pushTo(view: BookingScreen());
                                  },
                                );
                              }));
                        }
                        return Center(
                          child: Text(
                            "No avalible data",
                            style: TextStyle(color: textColor),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )),
          ),
        ),
      ),
    );
  }
}
