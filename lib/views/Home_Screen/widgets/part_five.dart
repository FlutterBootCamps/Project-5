
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartFive extends StatelessWidget {
  const PartFive({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Column(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 100,
                    width: 80,
                    decoration: const BoxDecoration(),
                    child: index >= 0 && index < imgOccasion.length
                        ? Image.asset(
                            Brand[index],
                          )
                        : const Text('Invalid index'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}