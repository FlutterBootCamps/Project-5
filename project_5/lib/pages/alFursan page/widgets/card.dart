import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';

class Cards extends StatelessWidget {
  const Cards({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });
  final String image;
  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // context.pushTo(view: )
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: context.getWidth() * 0.90,
          height: context.getHeight() / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: containertext, width: 0.5),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  image,
                  width: context.getWidth() * 0.90,
                  height: context.getHeight() / 2,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                  bottom: 0.5,
                  child: Container(
                    height: context.getHeight() / 4,
                    width: context.getWidth(),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(0, 0, 0, 0),
                            Colors.black,
                          ],
                        )),
                  )),
              Positioned(
                top: 20,
                right: 20,
                child: Image.asset(
                  "assets/saudia_logo_dark_footer (1).png",
                  height: context.getWidth() / 10,
                  width: context.getWidth() / 8,
                ),
              ),
              Positioned(
                bottom: 90,
                left: 20,
                child: Text(
                  text1,
                  style: GoogleFonts.notoSerifKannada(
                      color: whit, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                bottom: 60,
                left: 20,
                child: SizedBox(
                  height: 35,
                  width: context.getWidth() * 0.80,
                  child: Text(
                    text2,
                    style: GoogleFonts.notoSerifKannada(
                        color: newColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  height: context.getWidth() / 13,
                  width: context.getWidth() * 0.80,
                  decoration: BoxDecoration(
                    color: green,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        "Join AlFursan",
                        style: GoogleFonts.notoSerifKannada(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
