part of 'booking_bloc.dart';

@immutable
sealed class BookingEvent {}

// ignore: must_be_immutable
class BookingLoadEvent extends BookingEvent {
  String fromCity;
  String toCity;
  BookingLoadEvent({required this.fromCity, required this.toCity});
}

// ignore: must_be_immutable
class BookingBookEvent extends BookingEvent {
  String fromCity;
  String toCity;

  BookingBookEvent({required this.fromCity, required this.toCity});
}

// ignore: must_be_immutable
class ChooseDateEvent extends BookingEvent {
  String fromCity;
  String toCity;
  DateTime date;
  ChooseDateEvent(
      {required this.fromCity, required this.toCity, required this.date});
}
