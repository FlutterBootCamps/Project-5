import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/pages/home%20page/bloc/home_bloc.dart';

class ChooseCity extends StatelessWidget {
  const ChooseCity(
      {super.key,
      required this.index,
      required this.cityName,
      this.selected = false});
  final int index;
  final String cityName;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    pop() {
      context.pop();
    }

    final bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return InkWell(
          onTap: () async {
            bloc.add(ChangeCityEvent(selectedCity: index));
            await Future.delayed(const Duration(seconds: 1));
            pop();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                cityName,
                style: TextStyle(
                    fontSize: 18, color: whit, fontWeight: FontWeight.w500),
              ),
              Icon(
                Icons.done,
                color: bloc.selectIndex == index ? green : Colors.transparent,
              ),
            ],
          ),
        );
      },
    );
  }
}
