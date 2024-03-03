part of 'select_flight_bloc.dart';

@immutable
sealed class SelectFlightEvent {}

class AddPromoEvent extends SelectFlightEvent {}

class ChangeTapsEvent extends SelectFlightEvent {
  final int index;

  ChangeTapsEvent({required this.index});
}

class ChangeCityEvent extends SelectFlightEvent {
  final int number;
  final String CityName;
  ChangeCityEvent({required this.number, required this.CityName});
}

class CitySwapEvent extends SelectFlightEvent {}

class SelectDateEvent extends SelectFlightEvent {
  final DateTime startDateEvent;
  final DateTime endDateEvent;

  SelectDateEvent({required this.startDateEvent, required this.endDateEvent});
}
