part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}
class ChangeEvent extends BottomNavEvent{
  final int slectindex;

  ChangeEvent({required this.slectindex});
}
