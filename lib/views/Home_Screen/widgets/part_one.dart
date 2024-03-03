
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartOne extends StatelessWidget {
  const PartOne({
    Key? key,
    required this.containerCount,
  }) : super(key: key);

  final int containerCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: containerCount,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 71,
                color: const Color(0xffF0E9DF),
                margin: const EdgeInsets.all(4),
                child: Center(
                  child: index >= 0 && index < imgOccasion.length
                      ? Image.asset(
                          imgOccasion[index],
                        )
                      : const Text('Invalid index'),
                ),
              ),
            ),
            Text(
              imgOccasionText[index],
              style: const TextStyle(fontSize: 11),
            ),
          ],
        );
      },
    );
  }
}