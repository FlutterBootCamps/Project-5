import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List cities = ["Dammam", "Jeddah", "Madinah", "Riyadh"];
  int selectIndex = 0;
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<ChangeCityEvent>(changeCity);
  }

  FutureOr<void> changeCity(ChangeCityEvent event, Emitter<HomeState> emit) {
    selectIndex = event.selectedCity;
    emit(ChangeCityState());
  }
}
