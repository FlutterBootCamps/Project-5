import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:saudia_app_project_5/screens/alfursan_screen.dart';
import 'package:saudia_app_project_5/screens/home_screen.dart';
import 'package:saudia_app_project_5/screens/trips_screen.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {

  int selectedScreen = 0 ;
  List<Widget> screens = [
    const HomeScreen(),
    const TripsScreen(),
    AlFursanScreen(),
  ];

  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavBarEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<ChangeNavEvent>(methodChangeNav);
  }

  FutureOr<void> methodChangeNav(ChangeNavEvent event, Emitter<BottomNavBarState> emit) {
    selectedScreen = event.index;
    emit(SuccessChangeNavState(index: selectedScreen));
    }
}
