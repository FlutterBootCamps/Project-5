import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:url_launcher/url_launcher.dart';

class NewContainer extends StatelessWidget {
  const NewContainer(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.link});
  final String image;
  final String text1;
  final String text2;
  final String link;

  @override
  Widget build(BuildContext context) {
    final Uri url = Uri.parse(link);

    return InkWell(
      onTap: () {
        launchUrl(url);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: context.getWidth() * 0.90,
          height: context.getHeight() / 3,
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
                  height: context.getHeight() / 3,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: context.getHeight() / 4,
                    width: context.getWidth() * 0.90,
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
                bottom: 55,
                left: 20,
                child: Text(
                  text1,
                  style: GoogleFonts.notoSerifKannada(
                      color: whit, fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 20,
                child: SizedBox(
                  height: 40,
                  width: context.getWidth() * 0.80,
                  child: Text(
                    text2,
                    style: GoogleFonts.notoSerifKannada(
                        color: newColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
