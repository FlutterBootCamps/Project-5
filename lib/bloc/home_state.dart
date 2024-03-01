part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ChangedCityState extends HomeState {

}

final class ChangedFursanCardState extends HomeState {

}

final class ChangedTripCheckInInfoState extends HomeState {

}