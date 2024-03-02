import 'package:floward/model/model_proudect.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key, required this.item, 
  });
final Proudect item;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
           height: 40,width: 40,
           color: Colors.pink[50],
           child: Image.asset(item.imge),
          ),
          Text(item.section),
        ],
      ),
    );
  }
}