import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/data/data_layer.dart';
import 'package:project_5/data/data_model.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/city_choos.dart';

class ShowBottom extends StatelessWidget {
  ShowBottom({super.key, required this.number, required this.text});
  final int number;
  final String text;
  final TextEditingController? controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Get = GetIt.I.get<AllData>();
    return Container(
      height: context.getHeight() * 0.98,
      width: context.getWidth(),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              gapH10,
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: Text("Done   ",
                    style: GoogleFonts.notoSerifKannada(
                        color: green,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          gapH20,
          Text(
            text,
            style: GoogleFonts.notoSerifKannada(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
          ),
          gapH10,
          Container(
            height: context.getWidth() / 10,
            width: context.getWidth(),
            decoration: BoxDecoration(
              color: container,
            ),
            child: TextField(
              onSubmitted: (value) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                icon: Icon(
                  Icons.search,
                  color: containertext,
                ),
                hintText: "city, country/territory or airport",
                hintStyle: TextStyle(color: containertext),
              ),
              controller: controller,
            ),
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "All destination ",
                style: GoogleFonts.notoSerifKannada(
                    color: containertext,
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
              Row(
                children: [
                  Text(
                    "Operated by saudia ",
                    style: GoogleFonts.notoSerifKannada(
                        color: containertext,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                  Image.asset(
                    "assets/Direct-airport.png",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
            ],
          ),
          gapH20,
          ListView.builder(
            shrinkWrap: true,
            itemCount: Get.cities.length,
            itemBuilder: (context, index) {
              CityModel? city = Get.cities[index];
              return City(
                num: number,
                cityName: city.cityName,
                airport: city.airport,
                cityCut: city.cityCut,
              );
            },
          )
        ],
      ),
    );
  }
}
