part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class LoadingState extends HomeState {}

// ignore: must_be_immutable
final class LoadedState extends HomeState {
  List<NewModel> newList ;
  List<CityModel> cityList ;
  String nameCity;
  LoadedState({required this.newList , required this.cityList,  required this.nameCity});
}

