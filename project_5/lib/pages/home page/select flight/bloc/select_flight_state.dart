part of 'select_flight_bloc.dart';

@immutable
sealed class SelectFlightState {}

final class SelectFlightInitial extends SelectFlightState {}

final class AddPromoState extends SelectFlightState {}

final class ChangeTapsState extends SelectFlightState {}
