import 'package:custom_flutter_rounded_date_picker/custom_flutter_rounded_date_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/from_to_container.dart';
import 'package:project_5/widgets/passenger_quantity_bottom_sheet.dart';
import 'package:project_5/widgets/text_field_iconed.dart';

class OneWayTab extends StatelessWidget {
  const OneWayTab({
    super.key,
    required this.dateController,
    required this.passengersAndClassController,
  });

  final TextEditingController dateController;
  final TextEditingController passengersAndClassController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const FromToContainer(),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              dateController.text =
                  locator.formatter.format(locator.oneWayDepartureDate);
              passengersAndClassController.text =
                  "${locator.getPassengerSum()} Passengers, ${locator.isBussiness ? "Business" : "Guest"} Class";
              return TextFieldIconed(
                label: "Departure date",
                icon: Icons.calendar_today,
                controller: dateController,
                readOnly: true,
                onTap: () async {
                  context.read<HomeBloc>().add(SetOneWayDateEvent(
                      departureDate: await showRoundedDatePicker(
                          context: context,
                          background: noColor,
                          styleDatePicker: MaterialRoundedDatePickerStyle(
                              backgroundHeader: signatureGreenColor,
                              backgroundPicker: whiteColor,
                              decorationDateSelected: const BoxDecoration(
                                  color: signatureGreenColor,
                                  shape: BoxShape.circle)),
                          borderRadius: 4,
                          firstDate:
                              DateTime.now().subtract(const Duration(days: 1)),
                          lastDate:
                              DateTime.now().add(const Duration(days: 31)),
                          initialDate: locator.oneWayDepartureDate)));
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return TextFieldIconed(
                label: "Passengers and Class",
                icon: Icons.keyboard_arrow_down_outlined,
                iconColor: iconSignatureGreenColor,
                controller: passengersAndClassController,
                readOnly: true,
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return const PassengerQuantityBottomSheet();
                      });
                },
              );
            },
          )
        ],
      ),
    );
  }
}
