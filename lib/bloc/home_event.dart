part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}
class ShowEvent extends HomeEvent{}
class HideShowEvent extends HomeEvent{}