import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/views/home/bloc/home_bloc.dart';

// ignore: must_be_immutable
class CityPicker extends StatelessWidget {
  CityPicker({super.key, required this.city, required this.currentCity});
  String currentCity;
  String city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          context.read<HomeBloc>().add(ChooseCityEvent(cityName: city));
          Navigator.pop(context);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              currentCity == city ? Icons.check : null,
              color: lightGreen,
            ),
            Text(
              city,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 25, color: textColor),
            )
          ],
        ),
      ),
    );
  }
}
