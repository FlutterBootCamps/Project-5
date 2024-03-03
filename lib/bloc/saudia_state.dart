part of 'saudia_bloc.dart';

@immutable
sealed class SaudiaState {}

final class SaudiaInitial extends SaudiaState {}

class LoadingState extends SaudiaState {}


class ChangeFaresCityState extends SaudiaState {}

class ChangeClassState extends SaudiaState {}

class SuccessState extends SaudiaState {
  // List showData;
  // // int? index;
  // SuccessState({required this.showData});
}

// class ChangeCounterState extends SaudiaState {
//   int number;
//   ChangeCounterState({required this.number});
// }

// class ChangeCodeState extends SaudiaState {}

class ErrorState extends SaudiaState {}
