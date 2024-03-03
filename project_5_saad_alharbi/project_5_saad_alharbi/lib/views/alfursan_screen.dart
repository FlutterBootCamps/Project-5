import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/widgets/page_drawer.dart';
import 'package:url_launcher/url_launcher.dart';

class AlfursanScreen extends StatelessWidget {
  const AlfursanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: lightGreen),
      ),
      endDrawer: PageDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          alignment: Alignment.centerRight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "برنامج الفرسان",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 50),
              ),
              Text(
                textDirection: TextDirection.rtl,
                "سجل الدخول لعرض الأميال وحجز رحلتك القادمة والمزيد",
                style:
                    TextStyle(color: textColor.withOpacity(0.7), fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: context.getWidth(),
                height: context.getHeight() * 0.50,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/alfursan.jpg",
                      fit: BoxFit.cover,
                      height: context.getHeight() * 0.50,
                      width: context.getWidth(),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.center,
                              end: Alignment.bottomCenter,
                              colors: [Colors.black38, Colors.black])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "مزايا الانضمام الى البرنامج الفرسان انضم الى الفرسان واكتسب مكافات الرحلات",
                            textDirection: TextDirection.rtl,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: textColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                final url =
                                    Uri.parse("https://alfursan.saudia.com/");
                                launchUrl(url);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 50,
                                child: Text(
                                  "انضم إلى برنامج الفرسان",
                                  style: TextStyle(
                                      color: textColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                color: lightGreen,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/saudia_icon.svg",
                      width: 30,
                      colorFilter: ColorFilter.mode(
                        textColor,
                        BlendMode.srcIn,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
