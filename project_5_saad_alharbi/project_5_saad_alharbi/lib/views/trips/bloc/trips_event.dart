part of 'trips_bloc.dart';

@immutable
sealed class TripsEvent {}

final class TripsLoadingEvent extends TripsEvent {}

final class TripsLoadEvent extends TripsEvent {
  final String fromCity;
  final String toCity;
  List<Map<String, dynamic>> ticket;
  int index;
  TripsLoadEvent(
      {required this.fromCity,
      required this.toCity,
      required this.ticket,
      required this.index});
}
