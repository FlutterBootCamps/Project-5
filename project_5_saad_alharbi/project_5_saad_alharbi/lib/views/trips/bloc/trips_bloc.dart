import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';

part 'trips_event.dart';
part 'trips_state.dart';

class TripsBloc extends Bloc<TripsEvent, TripsState> {
  TripsBloc() : super(TripsInitial()) {
    on<TripsEvent>((event, emit) {});

    on<TripsLoadEvent>(methodSaveTicket);
    on<TripsLoadingEvent>(methodTripsLoadData);
  }

  FutureOr<void> methodSaveTicket(
      TripsLoadEvent event, Emitter<TripsState> emit) {
    int index = event.index;
    List<Map<String, dynamic>> ticket = event.ticket;
    String fromCity = event.fromCity;
    String toCity = event.toCity;
    List<Map<String, dynamic>> savedTicket =
        GetIt.I.get<HomeData>().savedTicket;

    if (!savedTicket.contains({
      "ticket": ticket[index],
      "fromCity": fromCity,
      "toCity": toCity,
    })) {
      savedTicket.add({
        "ticket": ticket[index],
        "fromCity": fromCity,
        "toCity": toCity,
      });
    }

    GetIt.I.get<HomeData>().setData();

    emit(TripsLoadState(
      ticket: savedTicket,
    ));
  }

  FutureOr<void> methodTripsLoadData(
      TripsLoadingEvent event, Emitter<TripsState> emit) {
    GetIt.I.get<HomeData>().loadData();
    emit(TripsLoadState(ticket: GetIt.I.get<HomeData>().savedTicket));
  }
}
