import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/views/booking/bloc/booking_bloc.dart';
import 'package:project_5_saad_alharbi/views/trips/bloc/trips_bloc.dart';

import '../widgets/plane_ticket.dart';

class BoardingScreen extends StatelessWidget {
  const BoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blackmode,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            BlocBuilder<BookingBloc, BookingState>(
              builder: (context, state) {
                if (state is BookingTicketState) {
                  return IconButton(
                      onPressed: () {
                        context.read<BookingBloc>().add(BookingLoadEvent(
                            fromCity: state.fromCity, toCity: state.toCity));
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward_outlined,
                        color: lightGreen,
                      ));
                }
                return SizedBox();
              },
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: context.getWidth(),
                alignment: Alignment.center,
                child: BlocBuilder<BookingBloc, BookingState>(
                  builder: (context, state) {
                    if (state is BookingLoadingState) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: textColor,
                        ),
                      );
                    }
                    if (state is BookingTicketState) {
                      var fromCity =
                          GetIt.I.get<HomeData>().getCity(state.fromCity);

                      var toCity =
                          GetIt.I.get<HomeData>().getCity(state.toCity);
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            fromCity.code!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          Transform.rotate(
                            angle: 270 * pi / 180,
                            child: Icon(
                              Icons.airplanemode_active,
                              color: textColor.withOpacity(0.4),
                              size: 20,
                            ),
                          ),
                          Text(
                            toCity.code!,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      );
                    }
                    return SizedBox();
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Colors.black,
              ),
              BlocBuilder<BookingBloc, BookingState>(
                builder: (context, state) {
                  if (state is BookingLoadingState) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: textColor,
                      ),
                    );
                  }
                  if (state is BookingTicketState) {
                    var fromCity =
                        GetIt.I.get<HomeData>().getCity(state.fromCity);

                    var toCity = GetIt.I.get<HomeData>().getCity(state.toCity);
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.ticket.length,
                        itemBuilder: (context, index) {
                          return PlaneTicket(
                            endTime: state.ticket[index]['endTime'],
                            fromCity: fromCity.code!,
                            toCity: toCity.code!,
                            price: state.ticket[index]['price'],
                            startTime: state.ticket[index]['startTime'],
                            stop: state.ticket[index]['stop'],
                            totalTime: state.ticket[index]['totalTime'],
                            onTap: () {
                              context.read<TripsBloc>().add(TripsLoadEvent(
                                    ticket: state.ticket,
                                    index: index,
                                    fromCity: fromCity.code!,
                                    toCity: toCity.code!,
                                  ));
                            },
                          );
                        });
                  }
                  return SizedBox();
                },
              )
            ],
          ),
        ));
  }
}
