part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

final class ChangeCityEvent extends HomeEvent{
  final int index;

  ChangeCityEvent({required this.index});
}

final class ChangeFursanCardEvent extends HomeEvent {
  final int index;

  ChangeFursanCardEvent({required this.index});
}

final class ChangeIdTypeEvent extends HomeEvent {
  final Object? value;

  ChangeIdTypeEvent({required this.value});
}

final class ChangeIDTextFieldEvent extends HomeEvent {
  final String id;

  ChangeIDTextFieldEvent({required this.id});
}

final class ChangeLastNameTextFieldEvent extends HomeEvent {
  final String lastName;

  ChangeLastNameTextFieldEvent({required this.lastName});
}