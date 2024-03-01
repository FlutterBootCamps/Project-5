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
    on<ChangeFursanCardEvent>(changeFursanCard);
    on<ChangeIdTypeEvent>(changeIdType);
    on<ChangeIDTextFieldEvent>(changeIDTextField);
    on<ChangeLastNameTextFieldEvent>(changeLastNameTextField);
  }

  FutureOr<void> changeCity(ChangeCityEvent event, Emitter<HomeState> emit) {
    locator.selectedCityIndex = event.index;
    emit(ChangedCityState());
  }

  FutureOr<void> changeFursanCard(ChangeFursanCardEvent event, Emitter<HomeState> emit) {
    locator.selectedFursanCardIndex = event.index;
    emit(ChangedFursanCardState());
  }
  

  FutureOr<void> changeIdType(ChangeIdTypeEvent event, Emitter<HomeState> emit) {
    locator.selectedIDType =  event.value;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }

  FutureOr<void> changeIDTextField(ChangeIDTextFieldEvent event, Emitter<HomeState> emit) {
    locator.currentID = event.id;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }

  FutureOr<void> changeLastNameTextField(ChangeLastNameTextFieldEvent event, Emitter<HomeState> emit) {
    locator.currentLastName = event.lastName;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }
}
