import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/views/booking/bloc/booking_bloc.dart';

// ignore: must_be_immutable
class TabContainer extends StatelessWidget {
  TabContainer({super.key, required this.fromCity, required this.toCity});
  String fromCity;
  String toCity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.getWidth(),
          height: 150,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: context.getWidth() * 0.40,
                    height: 150,
                    color: blackmode,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "الى",
                          style: TextStyle(
                              color: textColor.withOpacity(0.4),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          toCity,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: context.getWidth() * 0.40,
                    height: 150,
                    color: blackmode,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "من",
                          style: TextStyle(
                              color: textColor.withOpacity(0.4),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          fromCity,
                          style: TextStyle(
                              color: textColor,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              IconButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.black)),
                  onPressed: () {},
                  icon: Icon(
                    size: 30,
                    Icons.compare_arrows,
                    color: lightGreen,
                  )),
            ],
          ),
        ),
        BlocBuilder<BookingBloc, BookingState>(
          builder: (context, state) {
            if (state is BookingLoadState) {
              return InkWell(
                onTap: () {
                  showDatePicker(
                          context: context,
                          firstDate: DateTime(2024),
                          lastDate: DateTime(2025))
                      .then((date) {
                    state.date = date!;

                    context.read<BookingBloc>().add(ChooseDateEvent(
                        date: state.date!,
                        fromCity: state.fromCity,
                        toCity: state.toCity));
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: context.getWidth(),
                  height: 80,
                  color: blackmode,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 30,
                        color: lightGreen,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "تواريخ السفر",
                            style: TextStyle(
                                color: textColor.withOpacity(0.4),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(
                            "${state.date!.year}-${state.date!.month}-${state.date!.day}",
                            style: TextStyle(
                                color: textColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }
            return SizedBox();
          },
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          width: context.getWidth(),
          height: 80,
          color: blackmode,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.keyboard_arrow_down_sharp,
                size: 50,
                color: lightGreen,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "المسافرون ودرجات السفر",
                    style: TextStyle(
                        color: textColor.withOpacity(0.4),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text(
                    "1 درجة الضيافه ,مسافر",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
