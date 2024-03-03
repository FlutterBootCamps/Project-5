import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class ToTravel extends StatelessWidget {
  ToTravel({
    super.key, required 
  this.cityName, 
  required this.airport, 
  required this.cityCode, 
  required this.country,
  required this.selectedCity,
  });
  String cityName;
  String country;
  String airport;
  String cityCode;
  int selectedCity;

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();
    
    return InkWell(
      onTap:(){
        bloc.add(ShowTravelCitiesEvent(index: selectedCity));
        Navigator.pop(context); 
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "$cityName,  ",
                      style: const TextStyle(
                          color: black, fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      country,
                      style: const TextStyle(
                          color: darkGrey, fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Text(
                  airport,
                  style: const TextStyle(
                      color: darkGrey, fontSize: 14, fontWeight: FontWeight.w200),
                ),
              ],
            ),
            Row(
              children: [
                SvgPicture.asset(
                  "asset/images/saudia_icon.svg",
                  colorFilter: const ColorFilter.mode(green, BlendMode.srcIn),
                  width: context.getWidth() *0.06, 
                  height: context.getWidth() * 0.06,
                ),
                width8,
                Container(
                  width: context.getWidth() *0.12, 
                  height: context.getWidth() * 0.1,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child:  Text(
                    cityCode,
                    style: const TextStyle(
                        color: green, fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  
  }
}
