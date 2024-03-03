part of 'bottom_nav_bar_bloc.dart';

@immutable
sealed class BottomNavBarState {}

final class BottomNavBarInitial extends BottomNavBarState {}

// ignore: must_be_immutable
final class SuccessChangeNavState extends BottomNavBarState {
  int index;
  SuccessChangeNavState({required this.index});
}
