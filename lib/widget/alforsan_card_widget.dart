import 'package:flutter/material.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/screens/join_alforsan.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Alforsan extends StatelessWidget {
  Alforsan({
    super.key,
    required this.title,
    required this.description,
    required this.image,
    required this.imageController,
  });
  String title;
  String description;
  String image;
  PageController imageController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 18),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          height: context.getHeight() * 0.51,
          width: context.getWidth() * 0.90,
          decoration: BoxDecoration(
            image: DecorationImage(
                opacity: 0.8, image: AssetImage(image), fit: BoxFit.cover),
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: white, fontSize: 25, fontWeight: FontWeight.w500),
              ),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: lightgrey, fontSize: 18),
              ),
              height16,
              InkWell(
                onTap: () {
                  context.pushTo(view: const JoinAlForsan());
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  width: context.getWidth(),
                  height: context.getWidth() * 0.15,
                  alignment: Alignment.center,
                  child: const Text(
                    "Join AlForsan",
                    style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
        height16,
        SmoothPageIndicator(
          controller: imageController,
          count: 2,
          axisDirection: Axis.horizontal,
          effect: const SlideEffect(
              spacing: 8.0,
              radius: 20.0,
              dotWidth: 10.0,
              dotHeight: 10.0,
              strokeWidth: 1.5,
              dotColor: grey,
              activeDotColor: black),
        )
      ],
    );
  }
}
