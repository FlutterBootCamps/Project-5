import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class FaresFromCity extends StatelessWidget {
  const FaresFromCity({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          const Text(
            "Fares From",
            style: TextStyle(
                color: black, fontSize: 22, fontWeight: FontWeight.w600),
          ),
          width8,
          InkWell(
            onTap: () {
              showModalBottomSheet(

                  context: context,
                  builder: (context) {
                    return Container(
                      height: context.getHeight() * 0.28,
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Select a city",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: grey,
                                    fontWeight: FontWeight.w300),
                              ),
                              Container(
                                height: context.getWidth() * 0.06,
                                width: context.getWidth() * 0.06,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: grey,
                                ),
                                child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: white,
                                      size: 20,
                                    )),
                              ),
                            ],
                          ),
                          height8,
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    color: grey.withOpacity(.5), width: 0.5),
                              ),
                            ),
                          ),
                          height16,
                          const Text(
                            "Jeddah",
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          height12,
                          const Text(
                            "Madinah",
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          height12,
                          const Text(
                            "Dammam",
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                          height12,
                          const Text(
                            "Riyadh",
                            style: TextStyle(
                                fontSize: 18,
                                color: black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  });
            },
            child: const Row(
              children: [
                Text(
                  "Riyadh",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: black,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: black,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
