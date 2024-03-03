import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_storage/get_storage.dart';
import 'package:project_5/data/city_data.dart';
import 'package:project_5/data/fursan_data.dart';
import 'package:project_5/data/whats_new_tabs.dart';
import 'package:project_5/models/Trip_model.dart';
import 'package:project_5/models/booking_model.dart';
import 'package:project_5/models/city_model.dart';
import 'package:project_5/screens/alfursan_page.dart';
import 'package:project_5/screens/home_page.dart';
import 'package:project_5/screens/trip_page.dart';
import 'package:project_5/widgets/booking_card.dart';
import 'package:project_5/widgets/city_bar.dart';
import 'package:project_5/widgets/city_container.dart';
import 'package:project_5/widgets/feature_container.dart';
import 'package:intl/intl.dart';
import 'package:project_5/widgets/trip_card.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeData {
  int currentPageIndex = 0;
  int selectedFursanCardIndex = 0;
  Object? selectedIDType = "";
  String currentID = "";
  String currentLastName = "";
  bool isTripCheckInAllowed = false;

  CityModel? currentFromCity;
  CityModel? currentToCity;

  final DateFormat formatter = DateFormat('MM-yyyy-dd');
  DateTime oneWayDepartureDate = DateTime.now();

  DateTimeRange roundTripDates = DateTimeRange(
      start: DateTime.now(),
      end: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day + 5));

  bool isBussiness = false;
  int noOfAdults = 1;
  int noOfChildren = 0;
  int noOfInfantsSeat = 0;
  int noOfInfantsNoSeat = 0;

  bool isRoundTrip = true;

  List<Widget> pages = [
    const HomePage(),
    TripPage(),
    const AlfursanPage(),
  ];

  HomeData() {
    loadCityList();
    loadBookingsFromStorage();
    currentFromCity = cityList[0];
  }

  List<CityModel> cityList = [];
  List<BookingModel> bookingList = [];

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

  List<Widget> getAllOtherCities(CityModel currentCity) {
    return List.generate(cityList.length - 1, (index) {
      return CityContainer(
        city: currentCity.travelToList![index],
      );
    });
  }

  List<Widget> getAllBookings() {
    List<Widget> bookingsCreatedList = [];
    for (var booking in bookingList) {
      bookingsCreatedList.add(BookingCard(booking: booking));
    }
    return bookingsCreatedList;
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

  void setDefaultFromCityOnEmpty() {
    if (currentFromCity == null) {
      currentToCity = null;
      changeFromCity(cityList[0]);
    }
  }

  bool changeFromCity(CityModel city) {
    if (city != currentToCity) {
      currentFromCity = city;
      return true;
    }
    return false;
  }

  bool changeToCity(CityModel city) {
    if (city != currentFromCity) {
      currentToCity = city;
      return true;
    }
    return false;
  }

  Future swapFromToCities() async {
    CityModel? tempCity = currentFromCity;
    currentFromCity = currentToCity;
    currentToCity = tempCity;
  }

  void setDates(DateTime departureDate, DateTime comebackDate) {
    roundTripDates = DateTimeRange(start: departureDate, end: comebackDate);
  }

  void setOneWayDate(DateTime date) {
    oneWayDepartureDate = date;
  }

  bool isSearchAllowed() {
    if (currentFromCity != null && currentToCity != null) {
      return true;
    } else {
      return false;
    }
  }

  List<Widget> getFlights() {
    List<Widget> createdList = [];
    for (var trip in currentFromCity!.travelToList!
        .firstWhere((element) => element.cityName == currentToCity!.cityName)
        .trips!) {
      createdList.add(TripCard(trip: trip));
    }
    return createdList;
  }

  List<Widget> getAllCityBars(bool isTo) {
    List<Widget> cityBarList = [];
    for (var city in cityList) {
      cityBarList.add(CityBar(
        city: city,
        isTo: isTo,
      ));
    }
    return cityBarList;
  }

  int getPassengerSum() {
    return noOfAdults + noOfChildren + noOfInfantsNoSeat + noOfInfantsSeat;
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

  void addBooking(
    TripModel trip,
  ) {
    bookingList.add(BookingModel(
        flightNumber: trip.flightNumber,
        planeName: trip.planeName,
        departureAirport: trip.departureAirport,
        arrivalAirport: trip.arrivalAirport,
        departureTime: trip.departureTime,
        arrivalTime: trip.arrivalTime,
        duration: trip.duration,
        totalPrice: (isBussiness)
            ? trip.businessPrice * getPassengerSum()
            : trip.businessPrice * getPassengerSum(),
        noOfPassengers: getPassengerSum(),
        date: (isRoundTrip)
            ? "${locator.formatter.format(locator.roundTripDates.start)} - ${locator.formatter.format(locator.roundTripDates.end)}"
            : locator.formatter.format(locator.oneWayDepartureDate)));
    uploadBookingsToStorage();
  }

  void loadBookingsFromStorage() {
    bookingList = (box.read<List<dynamic>>("bookingList") ?? [])
        .map((e) => BookingModel.fromJson(e))
        .toList();
  }

  void uploadBookingsToStorage() {
    box.write("bookingList", bookingList.map((e) => e.toJson()).toList());
  }
}

final locator = GetIt.I.get<HomeData>();
final box = GetStorage();
