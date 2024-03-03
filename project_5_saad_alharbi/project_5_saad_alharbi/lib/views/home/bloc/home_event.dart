part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class LoadEvent extends HomeEvent{}

// ignore: must_be_immutable
class ChooseCityEvent extends HomeEvent{
  String cityName;
  ChooseCityEvent({required this.cityName});
}
