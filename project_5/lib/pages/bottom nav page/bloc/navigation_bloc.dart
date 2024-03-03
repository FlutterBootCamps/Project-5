import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:project_5/pages/alFursan%20page/alfursan_page.dart';
import 'package:project_5/pages/home%20page/home_page.dart';
import 'package:project_5/pages/trips_page.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  List<Widget> views = [
    HomePage(),
    TripsPage(),
    AlFursan(),
  ];
  int selctedIndex = 0;
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigationEvent>((event, emit) {});
    on<ChangeNavEvent>(changePage);
  }

  FutureOr<void> changePage(
      ChangeNavEvent event, Emitter<NavigationState> emit) {
    selctedIndex = event.selectedPage;
    emit(ChangeNavState());
  }
}
