part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangedCityState extends HomeState {
  final CityModel city;

  ChangedCityState({
    required this.city,
  });
}

final class ChangedFursanCardState extends HomeState {}

final class ChangedTripCheckInInfoState extends HomeState {}

final class CitySelectedState extends HomeState {
  final CityModel? fromCity;
  final CityModel? toCity;

  CitySelectedState({required this.fromCity, required this.toCity});
}

final class CitySelectionErrorState extends HomeState {
  final String msg;

  CitySelectionErrorState({required this.msg});
}

final class ChangedDatesState extends HomeState {
  final DateTime departureDate;
  final DateTime comebackDate;

  ChangedDatesState({required this.departureDate, required this.comebackDate});
}

final class ChangedOneWayDateState extends HomeState {
  final DateTime departureDate;

  ChangedOneWayDateState({
    required this.departureDate,
  });
}

final class ShowCityPickerState extends HomeState {
  final List<Widget> cityBarList;

  ShowCityPickerState({required this.cityBarList});
}

final class ChangePassengerQuantityState extends HomeState {}

final class ChangeClassTypeState extends HomeState {}

final class SearchingFlightsState extends HomeState {}

final class SearchingFlightsErrorState extends HomeState {
  final String msg;

  SearchingFlightsErrorState({required this.msg});
}

final class BookingAddedState extends HomeState {
  final String msg;

  BookingAddedState({required this.msg});
}
