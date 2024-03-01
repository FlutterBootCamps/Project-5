part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class ChangeCityEvent extends HomeEvent{
  final int index;

  ChangeCityEvent({required this.index});
}