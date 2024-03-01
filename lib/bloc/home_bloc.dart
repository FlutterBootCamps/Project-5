import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project_5/data_layer/home_data_layer.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
    });
    on<ChangeCityEvent>(changeCity);
  }

  FutureOr<void> changeCity(ChangeCityEvent event, Emitter<HomeState> emit) {
    locator.selectedCityIndex = event.index;
    emit(ChangedCityEvent());
  }
}
