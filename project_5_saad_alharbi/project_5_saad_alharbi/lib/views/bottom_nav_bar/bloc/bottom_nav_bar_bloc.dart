import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:project_5_saad_alharbi/views/alfursan_screen.dart';
import 'package:project_5_saad_alharbi/views/home/home_screen.dart';
import 'package:project_5_saad_alharbi/views/trips/trips_screen.dart';

part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  int currentIndex = 2;
  List<Widget> pages = [
    AlfursanScreen(),
    TripsScreen(),
    HomeScreen(),
  ];
  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<BottomNavBarEvent>((event, emit) {});
     on<ChangePageEvent>(methodChangePage);
  }

  FutureOr<void> methodChangePage(ChangePageEvent event, Emitter<BottomNavBarState> emit) {
    currentIndex = event.indexPage;
    emit(ChangePageState());
  }
}
