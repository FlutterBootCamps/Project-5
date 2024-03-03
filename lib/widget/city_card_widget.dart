import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/model/saudia_model.dart';
import 'package:saudia_app_project_5/screens/book_flight_screen.dart';

class CityCard extends StatelessWidget {
  CityCard({super.key, required this.availableCities, required this.selectedCity});
  SaudiaModel availableCities;
  int selectedCity;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.pushTo(view: BookFlightScreen(city:  availableCities,));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        height: context.getWidth() * 0.6,
        width: context.getWidth() * .88,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(availableCities.imagePath!), //"asset/images/bgRiyadh.jpg"),
              fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.circular(5),
        ),
        child: SizedBox(
          height: context.getWidth() * 0.6,
          width: context.getWidth() * .88,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  width: context.getWidth() * 0.2,
                  height: context.getWidth() * 0.07,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: const Text(
                    "Popular",
                    style: TextStyle(
                        color: white, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
      
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    availableCities.cityName,
                    style: const TextStyle(
                        color: white, fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Round trip from",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: grey, fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      width8,
                      Text(
                        "SAR ${availableCities.price}",
                        style: const TextStyle(
                            color: white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
