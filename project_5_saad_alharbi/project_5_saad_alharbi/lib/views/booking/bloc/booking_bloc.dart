import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';

part 'booking_event.dart';
part 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(BookingInitial()) {
    on<BookingEvent>((event, emit) {});

    on<BookingLoadEvent>(methodLoad);
    on<BookingBookEvent>(methodBook);
    on<ChooseDateEvent>(methodChooseDate);
  }

  FutureOr<void> methodLoad(
      BookingLoadEvent event, Emitter<BookingState> emit) {
    String fromCity = event.fromCity;
    String toCity = event.toCity;
    emit(BookingLoadState(
        fromCity: fromCity, toCity: toCity, date: DateTime.now()));
  }

  FutureOr<void> methodBook(
      BookingBookEvent event, Emitter<BookingState> emit) {
    String fromCity = event.fromCity;
    String toCity = event.toCity;

    var ticket = GetIt.I.get<HomeData>().getTicketList(fromCity, toCity);

    emit(BookingTicketState(
        fromCity: fromCity, toCity: toCity, ticket: ticket!));
  }

  FutureOr<void> methodChooseDate(
      ChooseDateEvent event, Emitter<BookingState> emit) {
    String fromCity = event.fromCity;
    String toCity = event.toCity;
    DateTime date = event.date;
    emit(BookingLoadState(fromCity: fromCity, toCity: toCity, date: date));
  }
}
