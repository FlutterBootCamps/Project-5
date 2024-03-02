import 'package:floward/bloc/home_bloc.dart';
import 'package:floward/data_layer/data_layer.dart';
import 'package:floward/data_layer/setup.dart';
import 'package:floward/views/bloc/bottom_nav_bloc.dart';
import 'package:floward/views/bottom_nav_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setup();
  //GetIt.I.get<DataService>().getAllProducts();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBloc(),
        ),
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
      ],
      child: const MaterialApp(
        home: BottomNavScreen(),
      ),
    );
  }
}
