import 'package:flutter/material.dart';
import 'package:project_5/utils/colors.dart';

class ShadedBackground extends StatelessWidget {
  const ShadedBackground({
    super.key, required this.image, this.child,
  });

  final String image;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bound) {
      return  const LinearGradient(
    begin: FractionalOffset.center,
    end: FractionalOffset.bottomCenter,
    colors: [
      noColor,
      bgColor
    ],
    stops: [
      0.0,
      0.45
    ]) 
    .createShader(bound);
    },
    
    blendMode: BlendMode.srcOver,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image)),
            
        ),
        child: child,
      ),
    );
  }
}