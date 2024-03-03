import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';

class BottomSheetTip extends StatelessWidget {
  BottomSheetTip({
    super.key,
    required this.superTitle,
    required this.description,
    required this.title1,
    required this.subTitle1,
    required this.title2,
    required this.subTitle2,
    required this.title3,
    required this.subTitle3,
    required this.title4,
    required this.subTitle4,
  });
  String superTitle;
  String description;
  String title1;
  String subTitle1;
  String title2;
  String subTitle2;
  String title3;
  String subTitle3;
  String title4;
  String subTitle4;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.getHeight() * 0.98,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: grey,
                ),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close)),
              ),
            ],
          ),
          height48,
          Text(
            superTitle,
            style: const TextStyle(
                fontSize: 30, color: black, fontWeight: FontWeight.w600),
          ),
          height32,
          Text(
            description,
            style: const TextStyle(
                fontSize: 14, color: grey, fontWeight: FontWeight.w300),
          ),
          height24,
          Text(
            title1,
            style: const TextStyle(
                fontSize: 16, color: grey, fontWeight: FontWeight.w300),
          ),
          Text(
            subTitle1,
            style: const TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.w300),
          ),
          height24,
          Text(
            title2,
            style: const TextStyle(
                fontSize: 16, color: grey, fontWeight: FontWeight.w300),
          ),
          Text(
            subTitle2,
            style: const TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.w300),
          ),
          height24,
          Text(
            title3,
            style: const TextStyle(
                fontSize: 16, color: grey, fontWeight: FontWeight.w300),
          ),
          Text(
            subTitle3,
            style: const TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.w300),
          ),
          height24,
          Text(
            title4,
            style: const TextStyle(
                fontSize: 16, color: grey, fontWeight: FontWeight.w300),
          ),
          Text(
            subTitle4,
            style: const TextStyle(
                fontSize: 16, color: black, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
