import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/Passengers_number.dart';
import 'package:project_5/pages/home%20page/select%20flight/widgets/class_widgets.dart';

class Passengers extends StatelessWidget {
  const Passengers({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() * 0.98,
      width: context.getWidth(),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: background,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              gapH10,
              InkWell(
                onTap: () {
                  context.pop();
                },
                child: Text("cancel   ",
                    style: GoogleFonts.notoSerifKannada(
                        color: green,
                        fontSize: 15,
                        fontWeight: FontWeight.w500)),
              )
            ],
          ),
          gapH20,
          Text(
            "Passengers",
            style: GoogleFonts.notoSerifKannada(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
          ),
          gapH10,
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          gapH10,
          const PassengerNum(
            first: "Adult",
            second: "12 years and above",
            num: 1,
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const PassengerNum(
            first: "Children",
            second: "ages 2-11",
            num: 0,
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const PassengerNum(
            first: "Infants on seat",
            second: "Below 2 years",
            num: 0,
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const PassengerNum(
            first: "Infants",
            second: "Below 2 years",
            num: 0,
          ),
          gapH20,
          gapH10,
          Text(
            "Class",
            style: GoogleFonts.notoSerifKannada(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const Classes(
            classes: 'Guest',
            isSelected: true,
          ),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const Classes(classes: 'Business'),
          gapH20,
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: div.withOpacity(.5), width: 0.5),
              ),
            ),
          ),
          gapH20,
          const Classes(classes: 'First'),
          gapH20,
          gapH20,
          gapH20,
          gapH20,
          InkWell(
            onTap: () {
              context.pop();
            },
            child: Container(
              padding: const EdgeInsets.all(5),
              height: context.getWidth() / 13,
              width: context.getWidth(),
              decoration: BoxDecoration(
                color: green,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.notoSerifKannada(
                        color: whit, fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
