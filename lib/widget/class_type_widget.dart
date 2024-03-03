import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';

class ClassType extends StatelessWidget {
  ClassType({super.key, required this.className, required this.index});
  String className;
  int index;

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();

    return InkWell(
      onTap: () {
        bloc.add(ChangeClassEvent(index: index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            className,
            style: const TextStyle(color: black, fontSize: 16),
          ),
          BlocBuilder<SaudiaBloc, SaudiaState>(
            builder: (context, state) {
              return Icon(
                Icons.done,
                color: bloc.classIndex == index ? green : Colors.transparent,
              );
            },
          ),
        ],
      ),
    );
  }
}
