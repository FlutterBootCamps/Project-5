part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class ChangeCityEvent extends HomeEvent {
  final CityModel city;

  ChangeCityEvent({required this.city});
}

final class ChangeFursanCardEvent extends HomeEvent {
  final int index;

  ChangeFursanCardEvent({required this.index});
}

final class ChangeIdTypeEvent extends HomeEvent {
  final Object? value;

  ChangeIdTypeEvent({required this.value});
}

final class ChangeIDTextFieldEvent extends HomeEvent {
  final String id;

  ChangeIDTextFieldEvent({required this.id});
}

final class ChangeLastNameTextFieldEvent extends HomeEvent {
  final String lastName;

  ChangeLastNameTextFieldEvent({required this.lastName});
}

final class PickFromCityEvent extends HomeEvent {
  final CityModel selectedCity;

  PickFromCityEvent({required this.selectedCity});
}

final class PickToCityEvent extends HomeEvent {
  final CityModel selectedCity;

  PickToCityEvent({required this.selectedCity});
}

final class SwapCitiesEvent extends HomeEvent {}

final class SetDefaultFromCityOnEmptyEvent extends HomeEvent {}

final class ShowCityPickerEvent extends HomeEvent {
  final bool isTo;

  ShowCityPickerEvent({required this.isTo});
}

final class SetDepartureArrivalDatesEvent extends HomeEvent {
  final DateTime departureDate;
  final DateTime comebackDate;

  SetDepartureArrivalDatesEvent(
      {required this.comebackDate, required this.departureDate});
}

final class SetOneWayDateEvent extends HomeEvent {
  final DateTime? departureDate;

  SetOneWayDateEvent({required this.departureDate});
}

final class ChangePassengerQuantityAdultEvent extends HomeEvent {
  final int quantity;

  ChangePassengerQuantityAdultEvent({required this.quantity});
}

final class ChangePassengerQuantityChildrenEvent extends HomeEvent {
  final int quantity;

  ChangePassengerQuantityChildrenEvent({required this.quantity});
}

final class ChangePassengerQuantityInfantsSeatedEvent extends HomeEvent {
  final int quantity;

  ChangePassengerQuantityInfantsSeatedEvent({required this.quantity});
}

final class ChangePassengerQuantityInfantsNoSeatEvent extends HomeEvent {
  final int quantity;

  ChangePassengerQuantityInfantsNoSeatEvent({required this.quantity});
}

final class ResetPassengerQuantityEvent extends HomeEvent {}

final class ChangeClassTypeEvent extends HomeEvent {
  final bool changeTo;

  ChangeClassTypeEvent({required this.changeTo});
}

final class SearchFlightsEvent extends HomeEvent {}

final class AddBookingEvent extends HomeEvent {
  final TripModel trip;

  AddBookingEvent({required this.trip});
}
