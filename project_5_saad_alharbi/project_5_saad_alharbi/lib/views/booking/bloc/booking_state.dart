part of 'booking_bloc.dart';

@immutable
sealed class BookingState {}

final class BookingInitial extends BookingState {}

final class BookingLoadingState extends BookingState {}

final class BookingLoadState extends BookingState {
  final String fromCity;
  final String toCity;
  DateTime date;
  BookingLoadState(
      {required this.fromCity, required this.toCity, required this.date});
}

final class BookingTicketState extends BookingState {
  final String fromCity;
  final String toCity;
  List<Map<String, dynamic>> ticket;

  BookingTicketState({
    required this.ticket,
    required this.fromCity,
    required this.toCity,
  });
}
