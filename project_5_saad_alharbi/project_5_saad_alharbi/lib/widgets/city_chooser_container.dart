import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/views/home/bloc/home_bloc.dart';
import 'package:project_5_saad_alharbi/widgets/city_picker.dart';

class CityChooserContainer extends StatelessWidget {
  const CityChooserContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Container(
                        width: context.getWidth(),
                        height: context.getHeight() * 0.40,
                        decoration: BoxDecoration(
                            color: blackmode,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6))),
                        child: BlocBuilder<HomeBloc, HomeState>(
                          builder: (context, state) {
                            if (state is LoadingState) {
                              return Center(
                                child: CircularProgressIndicator(
                                  color: textColor,
                                ),
                              );
                            }
                            if (state is LoadedState) {
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        IconButton(
                                          onPressed: () =>
                                              Navigator.pop(context),
                                          icon: Icon(Icons.exit_to_app),
                                          color: textColor.withOpacity(0.5),
                                        ),
                                        Text(
                                          "أختر مدينة",
                                          style: TextStyle(
                                            color: textColor.withOpacity(0.5),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: textColor.withOpacity(0.2),
                                  ),
                                  CityPicker(
                                      city: "الدمام",
                                      currentCity: state.nameCity),
                                  CityPicker(
                                      city: "جدة", currentCity: state.nameCity),
                                  CityPicker(
                                      city: "المدينة",
                                      currentCity: state.nameCity),
                                  CityPicker(
                                      city: "الرياض",
                                      currentCity: state.nameCity),
                                ],
                              );
                            }
                            return Center(
                              child: Text(
                                "No avalible data",
                                style: TextStyle(color: textColor),
                              ),
                            );
                          },
                        ),
                      );
                    });
              },
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: lightGreen,
                    size: 40,
                  ),
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      if (state is LoadingState) {
                        return Center(
                          child: CircularProgressIndicator(
                            color: textColor,
                          ),
                        );
                      }
                      if (state is LoadedState) {
                        return Text(
                          state.nameCity,
                          style: TextStyle(
                              color: lightGreen,
                              decoration: TextDecoration.underline,
                              decorationColor: lightGreen,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        );
                      }
                      return Center(
                        child: Text(
                          "No avalible data",
                          style: TextStyle(color: textColor),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Text(
              "  عروض مميزة من ",
              style: TextStyle(
                  color: textColor, fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
