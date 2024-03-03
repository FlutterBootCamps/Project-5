import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/pages/home%20page/select%20flight/Select_flight._page.dart';
import 'package:project_5/pages/home%20page/select%20flight/bloc/select_flight_bloc.dart';

class CityCards extends StatelessWidget {
  const CityCards(
      {super.key,
      required this.image,
      required this.text1,
      required this.city1,
      required this.price});
  final String image;
  final String text1;
  final String city1;
  final double price;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final bloc = context.read<SelectFlightBloc>();
        bloc.city = city1;
        bloc.city2 = text1;
        context.pushTo(view:  SelectFlight(city1: city1 ,city2: text1,));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: context.getWidth() * 0.90,
          height: context.getHeight() / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: containertext, width: 0.5),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: context.getWidth() * 0.90,
                  height: context.getHeight() / 3,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: context.getHeight() / 4,
                    width: context.getWidth() * 0.90,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Colors.black,
                          ],
                        )),
                  )),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: context.getWidth() / 17,
                  width: context.getWidth() / 5.5,
                  decoration: BoxDecoration(
                    color: popular,
                  ),
                  child: Center(
                    child: Text(
                      "Popular",
                      style: GoogleFonts.notoSerifKannada(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 20,
                child: Text(
                  text1,
                  style: GoogleFonts.notoSerifKannada(
                      color: whit, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Row(
                  children: [
                    Text(
                      "Round trip from ",
                      style: GoogleFonts.notoSerifKannada(
                          color: newColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    Text(
                      "SAR $price",
                      style: GoogleFonts.notoSerifKannada(
                          color: whit,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
