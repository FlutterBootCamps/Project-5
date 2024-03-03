import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';
import 'package:project_5/widgets/page_header.dart';
import 'package:project_5/widgets/passenger_quantity_card.dart';
import 'package:project_5/widgets/text_button_bar.dart';

class PassengerQuantityBottomSheet extends StatelessWidget {
  const PassengerQuantityBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      // So we can make the modal bottom sheet not take up the entire screen.
      child: Container(
        width: context.getWidth(context),
        height: context.getHeight(context) * .97,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {
                        context
                            .read<HomeBloc>()
                            .add(ResetPassengerQuantityEvent());
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(
                            color: signatureGreenColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      )),
                ),
                const PageHeader(header: "Passengers", description: ""),
                const SizedBox(
                  height: 32,
                ),
                PassengerQuantityCard(
                  passengerType: "Adults",
                  passengerDesc: "12 Years and Above",
                  initValue: locator.noOfAdults,
                  minValue: 1,
                  maxValue: 10,
                  onQtyChanged: (value) {
                    context.read<HomeBloc>().add(
                        ChangePassengerQuantityAdultEvent(quantity: value));
                  },
                ),
                PassengerQuantityCard(
                  passengerType: "Children",
                  passengerDesc: "Ages 2-11",
                  initValue: locator.noOfChildren,
                  minValue: 0,
                  maxValue: 10,
                  onQtyChanged: (value) {
                    context.read<HomeBloc>().add(
                        ChangePassengerQuantityChildrenEvent(quantity: value));
                  },
                ),
                PassengerQuantityCard(
                  passengerType: "Infants on seat",
                  passengerDesc: "Below 2 years",
                  initValue: locator.noOfInfantsSeat,
                  minValue: 0,
                  maxValue: 10,
                  onQtyChanged: (value) {
                    context.read<HomeBloc>().add(
                        ChangePassengerQuantityInfantsSeatedEvent(
                            quantity: value));
                  },
                ),
                PassengerQuantityCard(
                  passengerType: "Infants",
                  passengerDesc: "Below 2 years",
                  initValue: locator.noOfInfantsNoSeat,
                  minValue: 0,
                  maxValue: 1,
                  onQtyChanged: (value) {
                    context.read<HomeBloc>().add(
                        ChangePassengerQuantityInfantsNoSeatEvent(
                            quantity: value));
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Class",
                  style: TextStyle(
                      color: whiteColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const Divider(
                  color: dividerColor,
                ),
                TextButtonBar(
                  text: "Guest",
                  isIconShown: !locator.isBussiness,
                  onTap: () {
                    context
                        .read<HomeBloc>()
                        .add(ChangeClassTypeEvent(changeTo: false));
                  },
                  iconColor: limeGreenColor,
                  textColor: whiteColor,
                  radius: 0,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  icon: Icons.check,
                ),
                const Divider(
                  color: dividerColor,
                ),
                TextButtonBar(
                  text: "Bussiness",
                  isIconShown: locator.isBussiness,
                  onTap: () {
                    context
                        .read<HomeBloc>()
                        .add(ChangeClassTypeEvent(changeTo: true));
                  },
                  iconColor: limeGreenColor,
                  textColor: whiteColor,
                  radius: 0,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  icon: Icons.check,
                ),
                const SizedBox(
                  height: 64,
                ),
                Container(
                  width: context.getWidth(context),
                  height: 157,
                  color: moonLightColor,
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.topCenter,
                  child: BottomButton(
                      text: "Confirm",
                      height: 60,
                      onTap: () {
                        Navigator.pop(context);
                      }),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
