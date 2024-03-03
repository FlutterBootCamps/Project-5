import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class PassengersCard extends StatelessWidget {
  PassengersCard({
    super.key,
    required this.passName,
    required this.passDetail,
    required this.index,
    this.isPressed = false,
  });
  String passName;
  String passDetail;
  int index;
  bool isPressed;

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              passName,
              style: const TextStyle(fontSize: 18, color: black),
            ),
            Text(
              passDetail,
              style: const TextStyle(fontSize: 16, color: grey),
            ),
          ],
        ),
        Row(
          children: [
            InkWell(
              onTap: () {
                print("press decrease");
                bloc.add(DecreasePassengertNumberEvent(number: index));
              },
              child: BlocBuilder<SaudiaBloc, SaudiaState>(
                builder: (context, state) {
                  return Container(
                    alignment: Alignment.topCenter,
                    width: context.getWidth() * 0.1,
                    height: context.getWidth() * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: 
                          serviceLocator.passengers[index] == 0 ? grey : black,
                    ),
                    child: const Icon(
                      Icons.minimize,
                      color: white,
                    ),
                  );
                },
              ),
            ),
            width12,
            BlocBuilder<SaudiaBloc, SaudiaState>(
              builder: (context, state) {
                if (state is SuccessState) {
                  return Text(
                    serviceLocator.passengers[index].toString(),
                    style: const TextStyle(fontSize: 18),
                  );
                }
                return const Text(
                  "0",
                  style: TextStyle(fontSize: 18),
                );
              },
            ),
            width12,
            InkWell(
              onTap: () {
                bloc.add(ChangePassengerNumberEvent(number: index));
              },
              child: Container(
                alignment: Alignment.center,
                width: context.getWidth() * 0.1,
                height: context.getWidth() * 0.1,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: black,
                ),
                child: const Icon(
                  Icons.add,
                  color: white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
