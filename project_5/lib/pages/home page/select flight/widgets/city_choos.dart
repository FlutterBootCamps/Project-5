
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/select%20flight/bloc/select_flight_bloc.dart';

class City extends StatelessWidget {
  const City(
      {super.key,
      required this.cityName,
      required this.cityCut,
      required this.airport,
      required this.num});
  final String cityName;
  final String cityCut;
  final String airport;
  final int num;

  @override
  Widget build(BuildContext context) {
    pop() {
      context.pop();
    }

    final bloc = context.read<SelectFlightBloc>();
    return InkWell(
      onTap: () async {
        bloc.add(ChangeCityEvent(number: num, CityName: cityName));
        pop();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cityName,
                style: TextStyle(
                    fontSize: 20, color: whit, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                width: context.getWidth() * 0.70,
                child: Text(
                  airport,
                  style: TextStyle(
                      fontSize: 17,
                      color: containertext,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                "assets/Direct-airport.png",
                height: 30,
                width: 30,
              ),
              gapW10,
              Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                    color: cityCutColor,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    cityCut,
                    style: TextStyle(
                        fontSize: 18, color: whit, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}