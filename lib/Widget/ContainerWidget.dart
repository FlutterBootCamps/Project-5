import 'package:floward/model/model_proudect.dart';
import 'package:floward/views/section_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.item,
  });
  final Proudect item;
  @override
  Widget build(BuildContext context) {
    return Container(
     
  
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child:  SectionScreen(),
                ),
              );
            },
            child: Container(
                padding: const EdgeInsets.only(bottom: 16),
                height: 80,
                width: 90,
                color: Color(0xfff1e8e3),
                child: Image.asset(
                  item.imge,
                )),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            item.section,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
