part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

// ignore: must_be_immutable
class ChangeCityEvent extends HomeEvent {
  late int selectedCity;
  ChangeCityEvent({this.selectedCity = 0});
}
