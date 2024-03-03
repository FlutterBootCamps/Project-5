import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/widgets/text_button_bar.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/drag_indicator.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';

class CitySelectBottomSheet extends StatelessWidget {
  const CitySelectBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: context.getWidth(context),
      height: 250,
      decoration: const BoxDecoration(color: secondaryBgColor),
      child: Column(
        children: [
          const SizedBox(
            height: 4,
          ),
          const DragIndicator(
            color: draggbleGreyColor,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                const Text(
                  "Select a city",
                  style: TextStyle(
                    color: greyTextColor,
                    fontSize: 14,
                  ),
                ),
                IconButtonUnpadded(
                  icon: const Icon(
                    Icons.cancel,
                    color: lightGreyColor,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          const Divider(
            color: dividerColor,
            thickness: 1,
          ),
          TextButtonBar(
            text: "Dammam",
            isIconShown: locator.currentFromCity!.cityName == "Dammam",
            onTap: () {
              context
                  .read<HomeBloc>()
                  .add(ChangeCityEvent(city: locator.cityList[1]));
              Navigator.pop(context);
            },
            iconColor: limeGreenColor,
            textColor: whiteColor,
            radius: 0,
            icon: Icons.check,
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
          TextButtonBar(
            text: "Jeddah",
            isIconShown: locator.currentFromCity!.cityName == "Jeddah",
            onTap: () {
              context
                  .read<HomeBloc>()
                  .add(ChangeCityEvent(city: locator.cityList[0]));
              Navigator.pop(context);
            },
            iconColor: limeGreenColor,
            textColor: whiteColor,
            radius: 0,
            padding: const EdgeInsets.symmetric(vertical: 8),
            icon: Icons.check,
          ),
          TextButtonBar(
            text: "Madinah",
            isIconShown: locator.currentFromCity!.cityName == "Madinah",
            onTap: () {
              context
                  .read<HomeBloc>()
                  .add(ChangeCityEvent(city: locator.cityList[2]));
              Navigator.pop(context);
            },
            iconColor: limeGreenColor,
            textColor: whiteColor,
            radius: 0,
            padding: const EdgeInsets.symmetric(vertical: 8),
            icon: Icons.check,
          ),
          TextButtonBar(
            text: "Riyadh",
            isIconShown: locator.currentFromCity!.cityName == "Riyadh",
            onTap: () {
              context
                  .read<HomeBloc>()
                  .add(ChangeCityEvent(city: locator.cityList[3]));
              Navigator.pop(context);
            },
            iconColor: limeGreenColor,
            textColor: whiteColor,
            radius: 0,
            padding: const EdgeInsets.symmetric(vertical: 8),
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}
