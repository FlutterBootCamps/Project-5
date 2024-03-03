part of 'trips_bloc.dart';

@immutable
sealed class TripsState {}

final class TripsInitial extends TripsState {}

final class TripsLoadingState extends TripsState {}

final class TripsLoadState extends TripsState {
  List<Map<String, dynamic>> ticket;
  TripsLoadState({required this.ticket});
}
