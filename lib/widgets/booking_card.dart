import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/models/booking_model.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.booking,
  });

  final BookingModel booking;

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
                        booking.departureTime,
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
                        booking.arrivalTime,
                        style: const TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    "${booking.departureAirport} to ${booking.arrivalAirport}",
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
                    booking.duration,
                    style: const TextStyle(color: greyTextColor, fontSize: 14),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "${booking.flightNumber} • ${booking.planeName}",
            style: const TextStyle(color: greyTextColor, fontSize: 14),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.people,
                color: whiteColor,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                "${booking.noOfPassengers}",
                style: const TextStyle(color: whiteColor, fontSize: 10),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(
                Icons.calendar_today,
                color: whiteColor,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                booking.date,
                style: const TextStyle(color: whiteColor, fontSize: 10),
              ),
            ],
          ),
          const Divider(
            color: lightInactiveGreyColor,
          ),
          Row(
            children: [
              Expanded(
                  child: BottomButton(
                isDisabled: true,
                text: "Booked",
                onTap: () {},
              )),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  children: [
                    const Text(
                      "Total Price",
                      style: TextStyle(color: greyTextColor, fontSize: 14),
                    ),
                    Text(
                      "${booking.totalPrice}",
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
