import 'package:bloc/bloc.dart';
import 'package:floward/data/data_set.dart';
import 'package:floward/model/model_proudect.dart';
import 'package:floward/views/bloc/bottom_nav_bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
     on<ShowEvent>((event, emit) async{
     emit(SuccessState(proudect1:products.map((e) => Proudect.fromJson(e)).toList()));
    
  });
 
  
}
}