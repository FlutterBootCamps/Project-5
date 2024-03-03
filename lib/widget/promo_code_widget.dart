import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/data_layer/data_services.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class PromoCode extends StatelessWidget {
  PromoCode({super.key});

  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final serviceLocator = GetIt.I.get<DataServices>();
    final bloc = context.read<SaudiaBloc>();
    return InkWell(
        onTap: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Container(
                  height: context.getHeight() * 0.9,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                        color: green,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300),
                                  ))
                            ],
                          ),
                          height48,
                          const Text(
                            "Add promo code",
                            style: TextStyle(
                                fontSize: 30,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          height16,
                          const Text(
                            "Apply your code by entering it below.",
                            style: TextStyle(
                                fontSize: 14,
                                color: grey,
                                fontWeight: FontWeight.w300),
                          ),
                          height32,
                          TextField(
                            controller: codeController,
                            decoration: const InputDecoration(
                                hintText: "Promo code",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: green,
                                        width: 2)) 
                                ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          if (codeController.text.isNotEmpty &&
                              serviceLocator.promoCode
                                  .contains(codeController.text)) {
                            bloc.add(
                                ChangeCodeEvent(code: codeController.text));
                            Navigator.pop(context);
                          } else {
                            showDialog(
                              context: context,
                              builder: (_) => const AlertDialog(
                                title: Text("Invalid Promo Code"),
                                content: Text("Please enter a valid code."),
                                
                              ),
                            );
                          }
                        },
                        child: Container(
                          width: context.getWidth() * 0.85,
                          height: context.getWidth() / 8,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: green,
                          ),
                          child: const Text(
                            "Apply promotion",
                            style: TextStyle(
                              color: white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              });
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<SaudiaBloc, SaudiaState>(
            builder: (context, state) {
              return Text(
                bloc.promoCode.isEmpty ? "Add a promo code" : bloc.promoCode,
                style: const TextStyle(
                  color: green,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              );
            },
          ),
        ));
  }
}
