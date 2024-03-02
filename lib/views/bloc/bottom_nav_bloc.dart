import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:floward/views/Account_screen.dart';
import 'package:floward/views/cart_screen.dart';
import 'package:floward/views/catalogue_screen.dart';
import 'package:floward/views/home_screen.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
   final List screens =[
      HomeScreen(),
      CatalogueScreen(),
      CartScrenn(),
      AccountScreen(),
    ];
    int movescreen =0;
  BottomNavBloc() : super(BottomNavInitial()) {
    on<BottomNavEvent>((event, emit) {
      // TODO: implement event handler
    });
    //wehen eveent happen do method statment
    on<ChangeEvent>(changescreen);
    }
//method event
FutureOr<void> changescreen(
  ChangeEvent event,Emitter<BottomNavState>emit)
{
  print(event.slectindex);
movescreen = event.slectindex;
emit (SuccessState());
}
  
}
