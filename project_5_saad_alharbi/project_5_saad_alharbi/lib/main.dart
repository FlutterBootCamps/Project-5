import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5_saad_alharbi/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:project_5_saad_alharbi/utils/setup.dart';
import 'package:project_5_saad_alharbi/views/booking/bloc/booking_bloc.dart';
import 'package:project_5_saad_alharbi/views/home/bloc/home_bloc.dart';
import 'package:project_5_saad_alharbi/views/trips/bloc/trips_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeBloc()..add(LoadEvent()),
          ),
          BlocProvider(
            create: (context) => BookingBloc(),
          ),
          BlocProvider(
            create: (context) => TripsBloc()..add(TripsLoadingEvent()),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BottomNavBar(),
          theme: ThemeData(brightness: Brightness.dark),
        ));
  }
}
