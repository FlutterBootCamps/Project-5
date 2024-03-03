import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/class_type_widget.dart';
import 'package:saudia_app_project_5/widget/passenger_card.dart';
import 'package:saudia_app_project_5/widget/straight_line.dart';

class PassengersBottomSheet extends StatelessWidget {
  const PassengersBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<SaudiaBloc>();
    final serviceLocator = GetIt.I.get<DataServices>();
    // int sum = 0;

    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                height: context.getHeight() * 0.95,
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Cancel",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: green,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Passengers",
                          style: TextStyle(
                              color: black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700),
                        ),
                        height32,
                        const StraightLine(),
                        height16,
                        PassengersCard(
                          index: 0,
                          passName: "Adults",
                          passDetail: "12 years and above",
                        ),
                        height16,
                        const StraightLine(),
                        height16,
                        PassengersCard(
                          index: 1,
                          passName: "Children",
                          passDetail: "Ages 2-11",
                        ),
                        height16,
                        const StraightLine(),
                        height16,
                        PassengersCard(
                          index: 2,
                          passName: "Infants on seat",
                          passDetail: "Below 2 years",
                        ),
                        height16,
                        const StraightLine(),
                        height16,
                        PassengersCard(
                          index: 3,
                          passName: "Infants",
                          passDetail: "Below 2 years",
                        ),
                        height32,
                        const StraightLine(),
                        height32,
                        const Text(
                          "Class",
                          style: TextStyle(
                              fontSize: 22,
                              color: black,
                              fontWeight: FontWeight.w500),
                        ),
                        height24,
                        height12,
                        ClassType(className: "Guest", index: 0),
                        height8,
                        const StraightLine(),
                        height12,
                        ClassType(className: "Business", index: 1),
                        height12,
                        const StraightLine(),
                        height12,
                        ClassType(className: "First", index: 2),
                        height48,
                        InkWell(
                          onTap: () {
                            // sum = 0;
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: context.getWidth() * 8,
                            height: context.getWidth() * 0.13,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: green,
                                borderRadius: BorderRadius.circular(8)),
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                  color: white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: white,
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Passengers Class",
                style: TextStyle(color: grey, fontSize: 14),
              ),
              BlocBuilder<SaudiaBloc, SaudiaState>(
                builder: (context, state) {
                  if (serviceLocator.passengers.isNotEmpty) {
                    int sum = 0;
                    for (var element in serviceLocator.passengers) {
                      print("$sum  22");
                      sum += serviceLocator.passengers[element];
                      print("$sum 222");
                      print(serviceLocator.passengers[element]);
                    }
                    return Text(
                      " $sum Passenger , ${bloc.classes[bloc.classIndex]} Class",
                      style: const TextStyle(color: black, fontSize: 18),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios_rounded,
            color: green,
          ),
        ]),
      ),
    );
  }
}
