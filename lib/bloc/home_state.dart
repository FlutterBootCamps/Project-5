part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
final class SuccessState extends HomeState {
final List<Proudect> proudect1;
  SuccessState({required this.proudect1 });
}
 final class VisibleState extends HomeState {
  bool isVisible =true;
 }