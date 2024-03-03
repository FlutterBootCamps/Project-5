import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/models/city_model.dart';
import 'package:project_5/utils/colors.dart';

class CityBar extends StatelessWidget {
  const CityBar({
    super.key,
    required this.city,
    this.isTo = false,
  });
  final CityModel city;
  final bool? isTo;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        (isTo!)
            ? context.read<HomeBloc>().add(PickToCityEvent(selectedCity: city))
            : context
                .read<HomeBloc>()
                .add(PickFromCityEvent(selectedCity: city));
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "${city.cityName},",
                        style: const TextStyle(
                            color: whiteColor, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text: " ${city.cityCountry}",
                              style: const TextStyle(
                                  color: lightGreyColor,
                                  fontWeight: FontWeight.normal)),
                        ]),
                  ),
                  Text(
                    city.airport,
                    style: const TextStyle(
                        color: lightInactiveGreyColor, fontSize: 12),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.airplanemode_active_sharp,
                color: signatureGreenColor,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 50,
              height: 40,
              decoration: BoxDecoration(
                  color: seeThroughSignatureGreen,
                  borderRadius: BorderRadius.circular(2)),
              child: Text(
                city.cityCode,
                style: const TextStyle(
                    color: textSignatureGreenColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
