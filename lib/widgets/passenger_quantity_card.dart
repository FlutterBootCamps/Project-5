import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:project_5/utils/colors.dart';

class PassengerQuantityCard extends StatelessWidget {
  const PassengerQuantityCard({
    super.key,
    required this.passengerType,
    required this.passengerDesc,
    required this.maxValue,
    required this.minValue,
    required this.initValue,
    this.onQtyChanged,
  });
  final String passengerType;
  final String passengerDesc;
  final int maxValue;
  final int minValue;
  final int initValue;
  final Function(dynamic)? onQtyChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: dividerColor,
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    passengerType,
                    style: const TextStyle(
                      color: whiteColor,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    passengerDesc,
                    style: const TextStyle(
                        color: greyTextColor, fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            InputQty.int(
              onQtyChanged: onQtyChanged,
              maxVal: maxValue,
              minVal: minValue,
              initVal: initValue,
              qtyFormProps: const QtyFormProps(
                  enableTyping: false,
                  style: TextStyle(color: whiteColor, fontSize: 20)),
              decoration: const QtyDecorationProps(
                  border: InputBorder.none,
                  iconColor: whiteColor,
                  btnColor: lightGreyColor,
                  borderShape: BorderShapeBtn.circle),
            )
          ],
        ),
      ],
    );
  }
}
