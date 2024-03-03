import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_5/data/data_layer.dart';
import 'package:project_5/pages/home%20page/select%20flight/round_page.dart';
import '../Multy_city.dart';
import '../one_way_page.dart';
part 'select_flight_event.dart';
part 'select_flight_state.dart';

class SelectFlightBloc extends Bloc<SelectFlightEvent, SelectFlightState> {
  String city = GetIt.I.get<AllData>().city;
  String city2 = GetIt.I.get<AllData>().city2;
  List<Widget> views = [
    RoundPage(),
    const OneWayPage(),
    const MultiCityPage(),
  ];
  int selctedIndex = 0;
  bool isCity1 = false;
  bool isCity2 = false;
  DateTime startDateB = DateTime.now();
  DateTime endDateB = DateTime.now();

  SelectFlightBloc() : super(SelectFlightInitial()) {
    on<SelectFlightEvent>((event, emit) {});
    on<AddPromoEvent>((event, emit) {
      emit(AddPromoState());
    });
    on<ChangeTapsEvent>(changePage);
    on<ChangeCityEvent>(changeCity);
    on<CitySwapEvent>(citySwap);
    on<SelectDateEvent>(SelectDate);
  }

  FutureOr<void> changePage(
      ChangeTapsEvent event, Emitter<SelectFlightState> emit) {
    selctedIndex = event.index;
    emit(ChangeTapsState());
  }

  FutureOr<void> changeCity(
      ChangeCityEvent event, Emitter<SelectFlightState> emit) {
    if (event.number == 1) {
      city = event.CityName;
      GetIt.I.get<AllData>().city = city;
      isCity1 = true;
    } else if (event.number == 2) {
      city2 = event.CityName;
      GetIt.I.get<AllData>().city2 = city2;
      isCity2 = true;
    }

    emit(ChangeTapsState());
  }

  FutureOr<void> citySwap(
      CitySwapEvent event, Emitter<SelectFlightState> emit) {
    final String cityTemp = city;
    city = city2;
    city2 = cityTemp;
    GetIt.I.get<AllData>().city = city;
    GetIt.I.get<AllData>().city2 = city2;
    emit(ChangeTapsState());
  }

  FutureOr<void> SelectDate(
      SelectDateEvent event, Emitter<SelectFlightState> emit) {
    startDateB = event.startDateEvent;
    endDateB = event.endDateEvent;
    GetIt.I.get<AllData>().startDate = startDateB;
    GetIt.I.get<AllData>().endDate = endDateB;
    emit(ChangeTapsState());
  }
}
