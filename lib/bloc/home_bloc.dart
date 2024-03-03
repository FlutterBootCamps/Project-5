import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/models/Trip_model.dart';
import 'package:project_5/models/city_model.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {});
    on<ChangeCityEvent>(changeCity);
    on<ChangeFursanCardEvent>(changeFursanCard);
    on<ChangeIdTypeEvent>(changeIdType);
    on<ChangeIDTextFieldEvent>(changeIDTextField);
    on<ChangeLastNameTextFieldEvent>(changeLastNameTextField);

    on<PickFromCityEvent>(pickFromCity);
    on<PickToCityEvent>(pickToCity);
    on<ShowCityPickerEvent>(showCityPicker);
    on<SwapCitiesEvent>(swapCities);
    on<SetDefaultFromCityOnEmptyEvent>(setDefaultCity);
    on<SetDepartureArrivalDatesEvent>(setDates);
    on<ChangePassengerQuantityAdultEvent>(changeAdultQuantity);
    on<ChangePassengerQuantityChildrenEvent>(changeChildrenQuantity);
    on<ChangePassengerQuantityInfantsSeatedEvent>(changeInfantsSeatedQuantity);
    on<ChangePassengerQuantityInfantsNoSeatEvent>(changeInfantsNoSeatQuantity);
    on<ResetPassengerQuantityEvent>(resetPassengersQuantity);
    on<ChangeClassTypeEvent>(changeClassType);
    on<SetOneWayDateEvent>(setOneWayDate);
    on<SearchFlightsEvent>(searchFlights);
    on<AddBookingEvent>(addBooking);
  }

  FutureOr<void> changeCity(ChangeCityEvent event, Emitter<HomeState> emit) {
    locator.changeFromCity(event.city);
    emit(ChangedCityState(city: event.city));
  }

  FutureOr<void> changeFursanCard(
      ChangeFursanCardEvent event, Emitter<HomeState> emit) {
    locator.selectedFursanCardIndex = event.index;
    emit(ChangedFursanCardState());
  }

  FutureOr<void> changeIdType(
      ChangeIdTypeEvent event, Emitter<HomeState> emit) {
    locator.selectedIDType = event.value;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }

  FutureOr<void> changeIDTextField(
      ChangeIDTextFieldEvent event, Emitter<HomeState> emit) {
    locator.currentID = event.id;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }

  FutureOr<void> changeLastNameTextField(
      ChangeLastNameTextFieldEvent event, Emitter<HomeState> emit) {
    locator.currentLastName = event.lastName;
    locator.checkTripCheckInInfo();
    emit(ChangedTripCheckInInfoState());
  }

  FutureOr<void> pickFromCity(
      PickFromCityEvent event, Emitter<HomeState> emit) {
    bool isSucess = locator.changeFromCity(event.selectedCity);
    if (isSucess) {
      emit(CitySelectedState(
          fromCity: locator.currentFromCity, toCity: locator.currentToCity));
    } else {
      emit(CitySelectionErrorState(
          msg:
              "${event.selectedCity.cityName} is already selected as the To City"));
    }
  }

  FutureOr<void> pickToCity(PickToCityEvent event, Emitter<HomeState> emit) {
    bool isSucess = locator.changeToCity(event.selectedCity);
    if (isSucess) {
      emit(CitySelectedState(
          fromCity: locator.currentFromCity!, toCity: locator.currentToCity!));
    } else {
      emit(CitySelectionErrorState(
          msg:
              "${event.selectedCity.cityName} is already selected as the From City"));
    }
  }

  FutureOr<void> showCityPicker(
      ShowCityPickerEvent event, Emitter<HomeState> emit) {
    emit(ShowCityPickerState(cityBarList: locator.getAllCityBars(event.isTo)));
  }

  FutureOr<void> swapCities(SwapCitiesEvent event, Emitter<HomeState> emit) {
    // if (locator.currentFromCity == null || locator.currentToCity == null) {
    // emit(CitySelectionErrorState(
    //     msg: "You can only swap if both cities are selected!"));
    // } else {
    locator.swapFromToCities();
    emit(CitySelectedState(
        fromCity: locator.currentFromCity, toCity: locator.currentToCity));
    // }
  }

  FutureOr<void> setDefaultCity(
      SetDefaultFromCityOnEmptyEvent event, Emitter<HomeState> emit) {
    locator.setDefaultFromCityOnEmpty();
    emit(ChangedCityState(city: locator.currentFromCity!));
  }

  FutureOr<void> setDates(
      SetDepartureArrivalDatesEvent event, Emitter<HomeState> emit) {
    locator.setDates(event.departureDate, event.comebackDate);
    emit(ChangedDatesState(
        departureDate: event.departureDate, comebackDate: event.comebackDate));
  }

  FutureOr<void> changeAdultQuantity(
      ChangePassengerQuantityAdultEvent event, Emitter<HomeState> emit) {
    locator.noOfAdults = event.quantity;
    emit(ChangePassengerQuantityState());
  }

  FutureOr<void> changeChildrenQuantity(
      ChangePassengerQuantityChildrenEvent event, Emitter<HomeState> emit) {
    locator.noOfChildren = event.quantity;
    emit(ChangePassengerQuantityState());
  }

  FutureOr<void> changeInfantsSeatedQuantity(
      ChangePassengerQuantityInfantsSeatedEvent event,
      Emitter<HomeState> emit) {
    locator.noOfInfantsSeat = event.quantity;
    emit(ChangePassengerQuantityState());
  }

  FutureOr<void> changeInfantsNoSeatQuantity(
      ChangePassengerQuantityInfantsNoSeatEvent event,
      Emitter<HomeState> emit) {
    locator.noOfInfantsNoSeat = event.quantity;
    emit(ChangePassengerQuantityState());
  }

  FutureOr<void> resetPassengersQuantity(
      ResetPassengerQuantityEvent event, Emitter<HomeState> emit) {
    locator.noOfAdults = 1;
    locator.noOfChildren = 0;
    locator.noOfInfantsSeat = 0;
    locator.noOfInfantsNoSeat = 0;
    locator.isBussiness = false;
    emit(ChangePassengerQuantityState());
  }

  FutureOr<void> changeClassType(
      ChangeClassTypeEvent event, Emitter<HomeState> emit) {
    locator.isBussiness = event.changeTo;
    emit(ChangeClassTypeState());
  }

  FutureOr<void> setOneWayDate(
      SetOneWayDateEvent event, Emitter<HomeState> emit) {
    locator.setOneWayDate(event.departureDate!);
    emit(ChangedOneWayDateState(
      departureDate: locator.oneWayDepartureDate,
    ));
  }

  FutureOr<void> searchFlights(
      SearchFlightsEvent event, Emitter<HomeState> emit) {
    bool isSearchAllowed = locator.isSearchAllowed();
    if (isSearchAllowed) {
      emit(SearchingFlightsState());
    } else {
      emit(SearchingFlightsErrorState(msg: "Please fill From & To Cities"));
    }
  }

  FutureOr<void> addBooking(AddBookingEvent event, Emitter<HomeState> emit) {
    locator.addBooking(event.trip);
    emit(BookingAddedState(msg: "Booking Added Sucessfuly, check trip page."));
  }
}
