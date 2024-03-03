import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';
import 'package:project_5/widgets/page_header.dart';
import 'package:project_5/widgets/text_field_iconed.dart';
import 'package:project_5/widgets/type_selector.dart';

class AddTripPage extends StatelessWidget {
  AddTripPage({super.key});

  final TextEditingController bookingRefController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: IconButtonUnpadded(
            onTap: () {
              locator.resetTripCheckInInfo();
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: iconSignatureGreenColor,
            )),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          const SizedBox(
            height: 16,
          ),
          const PageHeader(
              header: "Add a trip",
              description: "Retrieve a booking and add it to your trips."),
          InkWell(
              onTap: () {},
              child: const Text("Tell me more",
                  style: TextStyle(
                    color: signatureGreenColor,
                  ))),
          const SizedBox(
            height: 42,
          ),
          TypeSelector(
            label: "Identification Type",
            items: const [
              DropdownMenuItem(
                value: "Booking reference",
                child: Text("Booking reference"),
              ),
              DropdownMenuItem(
                value: "Frequent flyer number",
                child: Text("Frequent flyer number"),
              ),
            ],
            onChanged: (value) {
              context.read<HomeBloc>().add(ChangeIdTypeEvent(value: value));
            },
          ),
          const SizedBox(
            height: 16,
          ),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return TextFieldIconed(
                keyboardType: TextInputType.number,
                icon: Icons.airplane_ticket_outlined,
                label: (locator.selectedIDType.toString() == "")
                    ? "Booking reference"
                    : locator.selectedIDType.toString(),
                controller: bookingRefController,
                onChanged: (text) {
                  context
                      .read<HomeBloc>()
                      .add(ChangeIDTextFieldEvent(id: text));
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          TextFieldIconed(
            icon: Icons.person_outline_rounded,
            label: "Last name",
            controller: lastNameController,
            onChanged: (text) {
              context
                  .read<HomeBloc>()
                  .add(ChangeLastNameTextFieldEvent(lastName: text));
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: context.getWidth(context),
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return BottomButton(
                  text: "Check-in",
                  onTap: () {},
                  isDisabled: !locator.isTripCheckInAllowed,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
