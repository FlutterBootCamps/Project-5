import 'package:flutter/widgets.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/widget/alforsan_card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatelessWidget {
  ImageSlider({super.key});

  PageController imageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.getWidth() * 12,
      height: context.getWidth() * 2,
      child: PageView(
        controller: imageController,
        children: [
          Alforsan(
            title: "Why join AlForsan",
            description:
                "Sing up to earn Reward flights, flight upgrade, lounge access and more",
            image: "asset/images/alforsan2.jpg",
            imageController: imageController,
          ),
          Alforsan(
            title: "Member benefit",
            description: "Start earning Miles with your first flight",
            image: "asset/images/alforsan1.jpg",
            imageController: imageController,
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
          ),
        ],
      ),
    );
  }
}
