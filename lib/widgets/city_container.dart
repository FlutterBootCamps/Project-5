import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/models/city_model.dart';
import 'package:project_5/utils/colors.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({
    super.key, required this.city,
  });
  final CityModel city;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: context.getWidth(context),
        height: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: greyBorderColor, width: .5),
          image: DecorationImage(
              colorFilter: const ColorFilter.mode(
                  shadowOverlayColor, BlendMode.srcOver),
              image: AssetImage(city.image!),
              fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 60,
              height: 30,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: lightSignatureGreenColor,
              ),
              child: const Text("Popular", style: TextStyle(color: blackColor, fontWeight: FontWeight.w600),),
            ),
            const Expanded(child: SizedBox(height: 1,)),
            SizedBox(
                width: 230,
                child: Text(
                  city.cityName,
                  style: const TextStyle(
                      color: whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                )),
            RichText(
              text: TextSpan(
                  text: "Round trip from ",
                  style: const TextStyle(
                    color: lightGreyColor,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                        text: "SAR ${city.price}",
                        style: const TextStyle(
                          color: whiteColor,
                          fontSize: 17,
                        ))
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
