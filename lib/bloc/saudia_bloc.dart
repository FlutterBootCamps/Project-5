import 'dart:async';
import 'dart:html';

import 'package:bloc/bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:meta/meta.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
// import 'package:saudia_app_project_5/dataset/whats_new_data.dart';
// import 'package:saudia_app_project_5/model/saudia_model.dart';
// import 'package:saudia_app_project_5/model/whats_New_model.dart';

part 'saudia_event.dart';
part 'saudia_state.dart';

class SaudiaBloc extends Bloc<SaudiaEvent, SaudiaState> {


  final serviceLocator = GetIt.I.get<DataServices>();

  List mainCities = ["Jeddah", "Dammam", "Madinah", "Riyadh"];
  int cityIndex = 0;
  int cityIndex1 = 0;
  String promoCode = '';
  List classes = ["Guest", "Business", "First"];
  int classIndex = 0;
  int passengerIndex = 0;


  // bool isSelected = false;

  SaudiaBloc() : super(SaudiaInitial()) {
    on<SaudiaEvent>((event, emit) {

      // TODO: implement event handler
    });
    

    on<ShowCitiesEvent>(showCitiesEventMethod);
    on<ShowTravelCitiesEvent>(showTravelCitiesEventMethod);

    on<ChangeClassEvent>(ChangeClassEventMethod);

    // on<ChangeCounterEvent>(ChangeCounterMethod);

    on<ChangeCodeEvent>((event, emit){
      print (promoCode);
      promoCode = event.code;
      print (promoCode);
      emit(SuccessState());
    });

    on<ChangePassengerNumberEvent>(ChangePassengerNumberMethod);
  
    on<DecreasePassengertNumberEvent>(DecreasePassengertNumberMethod);
  
  }

  FutureOr<void> showCitiesEventMethod(ShowCitiesEvent event, Emitter<SaudiaState> emit) {
    print("data of cities");
    cityIndex = event.index;
     emit(ChangeFaresCityState());
  }


  FutureOr<void> ChangeClassEventMethod(event, Emitter<SaudiaState> emit) {
    classIndex = event.index;
    emit(ChangeClassState());
  }

  FutureOr<void> ChangePassengerNumberMethod(ChangePassengerNumberEvent event, Emitter<SaudiaState> emit) async{
    await serviceLocator.increaseCounter(number : event.number);
    emit(SuccessState());
  }

  FutureOr<void> DecreasePassengertNumberMethod(DecreasePassengertNumberEvent event, Emitter<SaudiaState> emit) async {
    passengerIndex = event.number;
    await serviceLocator.decreaseCounter(event.number);
    emit(SuccessState());
  }


  FutureOr<void> showTravelCitiesEventMethod(ShowTravelCitiesEvent event, Emitter<SaudiaState> emit) {
    cityIndex1 = event.index;
     emit(ChangeFaresCityState());
  }
}

