import 'package:flutter/material.dart';
import 'package:project_5/models/city_model.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/city_picker_bottom_sheet.dart';

// ignore: must_be_immutable
class CityPicker extends StatelessWidget {
  CityPicker({
    super.key,
    this.isTo = false,
    this.city,
  });
  final bool? isTo;
  final CityModel? city;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
            isScrollControlled:
                true, // So we can make the modal bottom sheet exceed its height limit.
            context: context,
            builder: (context) {
              return CityPickerBottomSheet(
                searchController: searchController,
                isTo: isTo,
              );
            });
      },
      child: Container(
        width: 170,
        height: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          color: (city != null) ? darkGreyColor : textFieldGreyColor,
        ),
        child: (city != null)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    (isTo!) ? "To" : "From",
                    style: const TextStyle(
                      color: medGreyColor,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    city!.cityCode,
                    style: const TextStyle(
                        color: whiteColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    city!.cityName,
                    style: const TextStyle(
                      color: medGreyColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Text(
                  (isTo!)
                      ? "Please select an arrival city."
                      : "Please select a departure city.",
                  style: const TextStyle(
                    color: lightInactiveGreyColor,
                  ),
                ),
              ),
      ),
    );
  }
}
