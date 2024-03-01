import 'package:flutter/material.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';

class FeatureContainer extends StatelessWidget {
  const FeatureContainer({
    super.key, required this.image, required this.topText, required this.bottomText, this.onTap,
  });
  final String image;
  final String topText;
  final String bottomText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(

        width: context.getWidth(context),
        height: 250,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          border: Border.all(color: greyBorderColor, width: .5),
          image: DecorationImage(
            colorFilter: const ColorFilter.mode(
          shadowOverlayColor, BlendMode.srcOver),
            image: AssetImage(image), fit: BoxFit.cover),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 230,
              child: Text(topText, style: const TextStyle(color: whiteColor, fontSize: 24, fontWeight: FontWeight.w500),)),
            Text(bottomText, style: const TextStyle(color: whiteColor, fontSize: 16, ),)
          ],
        ),
        
      ),
    );
  }
}

