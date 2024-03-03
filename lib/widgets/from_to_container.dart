import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/city_picker.dart';

class FromToContainer extends StatelessWidget {
  const FromToContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is CitySelectionErrorState) {
              context.showErrorSnackBar(context, state.msg);
            }
          },
          builder: (context, state) {
            if (state is CitySelectedState) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CityPicker(
                    city: state.fromCity,
                  ),
                  CityPicker(
                    city: state.toCity,
                    isTo: true,
                  )
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CityPicker(
                    city: locator.currentFromCity,
                  ),
                  CityPicker(
                    city: locator.currentToCity,
                    isTo: true,
                  )
                ],
              );
            }
          },
        ),
        ElevatedButton(
          onPressed: () {
            context.read<HomeBloc>().add(SwapCitiesEvent());
          },
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(navyBlueColor),
              shape: MaterialStatePropertyAll(CircleBorder())),
          child: const Icon(
            Icons.swap_horiz_outlined,
            color: signatureGreenColor,
          ),
        )
      ],
    );
  }
}
