import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';
import 'package:project_5_saad_alharbi/model/city_model.dart';
import 'package:project_5_saad_alharbi/model/new_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});

    on<LoadEvent>(methodLoadData);
    on<ChooseCityEvent>(methodChooseCity);
  }

  FutureOr<void> methodLoadData(LoadEvent event, Emitter<HomeState> emit) {
    List<NewModel> newsList = GetIt.I.get<HomeData>().newsList;
    List<CityModel> cityList = GetIt.I.get<HomeData>().cityList;
    String nameCity = "الرياض";
    emit(
        LoadedState(newList: newsList, cityList: cityList, nameCity: nameCity));
  }

  FutureOr<void> methodChooseCity(ChooseCityEvent event, Emitter<HomeState> emit) {
    List<NewModel> newsList = GetIt.I.get<HomeData>().newsList;
    List<CityModel> cityList = GetIt.I.get<HomeData>().cityList;
    String nameCity = event.cityName;
    emit(
        LoadedState(newList: newsList, cityList: cityList, nameCity: nameCity));

  }
}
