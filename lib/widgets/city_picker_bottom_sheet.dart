import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/page_header.dart';
import 'package:project_5/widgets/text_field_iconed.dart';

class CityPickerBottomSheet extends StatelessWidget {
  const CityPickerBottomSheet({
    super.key,
    required this.searchController,
    this.isTo = false,
  });

  final bool? isTo;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      // So we can make the modal bottom sheet not take up the entire screen.
      child: Container(
        width: context.getWidth(context),
        height: context.getHeight(context) * .9,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(
                        color: signatureGreenColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  )),
            ),
            PageHeader(header: (isTo!) ? "To" : "From", description: ""),
            SizedBox(
                height: 40,
                child: TextFieldIconed(
                  label: "City",
                  icon: FontAwesomeIcons.magnifyingGlass,
                  controller: searchController,
                  isIconLeft: true,
                )),
            const SizedBox(
              height: 32,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is ShowCityPickerState) {
                  return ListView(
                    shrinkWrap: true,
                    children: state.cityBarList,
                  );
                } else {
                  return ListView(
                    shrinkWrap: true,
                    children: locator.getAllCityBars(isTo!),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
