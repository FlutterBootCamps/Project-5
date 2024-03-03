import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/models/Trip_model.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';

class TripCard extends StatelessWidget {
  const TripCard({
    super.key,
    required this.trip,
  });

  final TripModel trip;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      width: context.getWidth(context),
      height: 200,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: shadowOverlayColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        trip.departureTime,
                        style: const TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Transform.rotate(
                          angle: 90 * pi / 180,
                          child: const Icon(
                            Icons.airplanemode_active_outlined,
                            color: lightInactiveGreyColor,
                            size: 15,
                          )),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        trip.arrivalTime,
                        style: const TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    "${trip.departureAirport} to ${trip.arrivalAirport}",
                    style: const TextStyle(
                        color: whiteColor, fontWeight: FontWeight.w300),
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    "Non-stop",
                    style: TextStyle(color: greyTextColor, fontSize: 14),
                  ),
                  Text(
                    trip.duration,
                    style: const TextStyle(color: greyTextColor, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "${trip.flightNumber} • ${trip.planeName}",
            style: const TextStyle(color: greyTextColor, fontSize: 14),
          ),
          const SizedBox(
            height: 16,
          ),
          const Divider(
            color: lightInactiveGreyColor,
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Expanded(
                      child: BottomButton(
                    text: "Book",
                    onTap: () {
                      context.read<HomeBloc>().add(AddBookingEvent(trip: trip));
                      Navigator.pop(context);
                      Navigator.pop(context);
                    },
                  ));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    const Text(
                      "Total Fare",
                      style: TextStyle(color: greyTextColor, fontSize: 14),
                    ),
                    Text(
                      (locator.isBussiness
                          ? "${trip.businessPrice * locator.getPassengerSum()}"
                          : "${trip.guestPrice * locator.getPassengerSum()}"),
                      style: const TextStyle(color: whiteColor, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
