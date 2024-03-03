import 'package:flutter/material.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';

class SearchFlightsPage extends StatelessWidget {
  const SearchFlightsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButtonUnpadded(
            onTap: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: iconSignatureGreenColor,
            )),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 32,
          ),
          const Center(
              child: Text(
            "Departing",
            style: TextStyle(
                color: lightGreyColor,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                locator.currentFromCity!.cityCode,
                style: const TextStyle(
                    color: whiteColor,
                    fontSize: 42,
                    fontWeight: FontWeight.w600),
              ),
              const Icon(
                Icons.arrow_forward,
                size: 30,
                color: whiteColor,
              ),
              Text(
                locator.currentToCity!.cityCode,
                style: const TextStyle(
                    color: whiteColor,
                    fontSize: 42,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const Divider(
            color: lightInactiveGreyColor,
          ),
          Center(
              child: Text(
            (locator.isRoundTrip)
                ? "${locator.formatter.format(locator.roundTripDates.start)} - ${locator.formatter.format(locator.roundTripDates.end)}"
                : locator.formatter.format(locator.oneWayDepartureDate),
            style: const TextStyle(
                color: lightGreyColor,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          )),
          const Divider(
            color: lightInactiveGreyColor,
          ),
          const SizedBox(
            height: 32,
          ),
          Column(
            children: locator.getFlights(),
          )
        ],
      ),
    );
  }
}
