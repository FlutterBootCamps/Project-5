part of 'saudia_bloc.dart';

@immutable
sealed class SaudiaEvent {}

class ShowCitiesEvent extends SaudiaEvent {
  int index;
  ShowCitiesEvent({required this.index});
}

class ShowTravelCitiesEvent extends SaudiaEvent {
  int index;
  ShowTravelCitiesEvent({required this.index});
}

class ChangeCodeEvent extends SaudiaEvent {
  String code;
  ChangeCodeEvent({required this.code});
}

class ChangeClassEvent extends SaudiaEvent {
  int index;
  ChangeClassEvent({required this.index});
}

class ChangePassengerNumberEvent extends SaudiaEvent {
  int number;
  ChangePassengerNumberEvent({required this.number});
}

class DecreasePassengertNumberEvent extends SaudiaEvent {
  int number;
  DecreasePassengertNumberEvent({required this.number});
}
