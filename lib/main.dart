import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/screens/navigation_page.dart';
import 'package:project_5/utils/setup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setup();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const MaterialApp(
          debugShowCheckedModeBanner: false, home: NavigationPage()),
    );
  }
}
