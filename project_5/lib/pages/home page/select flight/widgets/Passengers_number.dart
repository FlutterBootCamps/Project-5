import 'package:flutter/material.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';

class PassengerNum extends StatelessWidget {
  const PassengerNum(
      {super.key,
      required this.num,
      required this.first,
      required this.second});
  final String first;
  final String second;
  final int num;

  @override
  Widget build(BuildContext context) {
    pop() {
      context.pop();
    }

    return InkWell(
      onTap: () async {
        // bloc.add(ChangeCityEvent(number: num, CityName: cityName));
        pop();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                first,
                style: TextStyle(
                    fontSize: 18,
                    color: newColor,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                second,
                style: TextStyle(
                    fontSize: 15,
                    color: containertext,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 54, 53, 53),
                      blurRadius: 0.5,
                      offset: Offset(0, 0), // Shadow position
                    ),
                  ], color: container2, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(color: whit, fontSize: 20),
                    ),
                  )),
              gapW20,
              Text(
                "$num",
                style: TextStyle(color: calender),
              ),
              gapW20,
              Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 54, 53, 53),
                      blurRadius: 0.5,
                      offset: Offset(0, 0), // Shadow position
                    ),
                  ], color: div, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(color: containertext, fontSize: 20),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
