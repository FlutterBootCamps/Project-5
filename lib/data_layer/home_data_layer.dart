import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_5/data/city_data.dart';
import 'package:project_5/data/fursan_data.dart';
import 'package:project_5/data/whats_new_tabs.dart';
import 'package:project_5/models/city_model.dart';
import 'package:project_5/screens/alfursan_page.dart';
import 'package:project_5/screens/home_page.dart';
import 'package:project_5/screens/trip_page.dart';
import 'package:project_5/widgets/city_container.dart';
import 'package:project_5/widgets/feature_container.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeData {
  int currentPageIndex = 0;
  int selectedCityIndex = 0;
  int selectedFursanCardIndex = 0;
  Object? selectedIDType = "";
  String currentID = "";
  String currentLastName = "";
  bool isTripCheckInAllowed = false;

  List<Widget> pages = [
    const HomePage(),
    const TripPage(),
    const AlfursanPage(),
  ];

  HomeData() {
    loadCityList();
  }

  List<CityModel> cityList = [];

  List<Widget> getAllWhatsNew() {
    return List.generate(whatsNewTabsData.length, (index) {
      return FeatureContainer(
        image: whatsNewTabsData[index]["imagePath"]!,
        topText: whatsNewTabsData[index]["topText"]!,
        bottomText: whatsNewTabsData[index]["bottomText"]!,
        url: whatsNewTabsData[index]["url"],
      );
    });
  }

  List<Widget> getAllFursanCards(double viewPortFraction) {
    return List.generate(fursanData.length, (index) {
      return FractionallySizedBox(
        widthFactor: 1 / viewPortFraction,
        child: FeatureContainer(
          image: fursanData[index]["imagePath"]!,
          topText: fursanData[index]["topText"]!,
          bottomText: fursanData[index]["bottomText"]!,
          isBig: true,
        ),
      );
    });
  }

  List<Widget> getAllOtherCities(int mainCityIndex) {
    return List.generate(cityList.length - 1, (index) {
      return CityContainer(
        city: cityList[mainCityIndex].travelToList![index],
      );
    });
  }

  void checkTripCheckInInfo() {
    if (selectedIDType != "" &&
        currentID.length == 12 &&
        currentLastName.isNotEmpty) {
      isTripCheckInAllowed = true;
    } else {
      isTripCheckInAllowed = false;
    }
  }

  void resetTripCheckInInfo() {
    selectedIDType = "";
    currentID = "";
    currentLastName = "";
    isTripCheckInAllowed = false;
  }

  void loadCityList() {
    cityList = List.generate(cityData.length, (index) {
      return CityModel.fromJson(cityData[index]);
    }).toList();
  }

  Future<void> runUrl(String url, LaunchMode mode) async {
    if (!await launchUrl(Uri.parse(url), mode: mode)) {
      throw Exception('Could not launch $url');
    }
  }
}

final locator = GetIt.I.get<HomeData>();
final box = GetStorage();
