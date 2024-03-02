import 'package:floward/views/bloc/bottom_nav_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //عرفت متغير بلوك يقرأ تاصفحات
    final bloc = context.read<BottomNavBloc>();
    //bloc builder on scaffold
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color(0xffFFFFFF),
          //bloc builder on BottomNavigationBar
          bottomNavigationBar: BlocBuilder<BottomNavBloc, BottomNavState>(
            builder: (context, state) {
              return BottomNavigationBar(
                  selectedItemColor: Colors.blue,
                  unselectedItemColor: Colors.grey,
                
                  onTap: (press) {
                    //استدعيت المتغير واضفت الايفنت و خليت متغير الايفنت = قيمة البرس
                    bloc.add(ChangeEvent(slectindex: press));
                    print('press');
                  },
                  currentIndex: bloc.movescreen,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'HOME'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.square_outlined), label: 'CATALOGUE'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.card_travel), label: 'CART'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'ACCOUNT'),
                  ]);
            },
          ),
          //call list screen in bloc
          body: bloc.screens[bloc.movescreen],
        );
      },
    );
  }
}
