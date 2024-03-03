
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartThree extends StatelessWidget {
  const PartThree({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
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
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(32))),
                    child: index >= 0 && index < imgOccasion.length
                        ? Image.asset(
                            Part3[index],
                            fit: BoxFit.cover,
                          )
                        : const Text('Invalid index'),
                  ),
                ),
                Text(
                  Part3Text[index],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}