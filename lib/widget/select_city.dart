import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';

class SelctCity extends StatelessWidget {
  SelctCity({super.key, required this.cityName, required this.selectedCity,
    this.isSelected = false
   });
  // SaudiaModel? city;
  int selectedCity;
  String cityName;

  bool isSelected ;


  @override
  Widget build(BuildContext context) {
    
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();
    
    
    return InkWell(
      onTap:() {
        bloc.add(ShowCitiesEvent(index: selectedCity));
        // await Future.delayed(const Duration(seconds: 1));
        Navigator.pop(context);       
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cityName,
            
            style: const TextStyle(
                fontSize: 18, color: black, fontWeight: FontWeight.w600),
          ),
          Icon(
            Icons.done,
            color: bloc.cityIndex == selectedCity ? green : Colors.transparent,
          ),
        ],
      ),
    );
  }
}
