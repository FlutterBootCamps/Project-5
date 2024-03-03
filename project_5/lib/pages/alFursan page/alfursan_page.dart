import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/alFursan%20page/widgets/alFursan_top.dart';
import 'package:project_5/pages/alFursan%20page/widgets/card.dart';
import 'package:project_5/pages/widgets/drawer_widget.dart';

class AlFursan extends StatelessWidget {
  AlFursan({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icon: Icon(
              Icons.menu,
              color: green,
              size: 30,
            )),
        actions: [
          Text(
            "Login",
            style: GoogleFonts.notoSerifKannada(
                color: green, fontSize: 15, fontWeight: FontWeight.w400),
          ),
          gapW10
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Top(),
            gapH20,
            SizedBox(
              height: context.getHeight() / 2,
              width: context.getWidth(),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return const Cards(
                      image: "assets/furs.jpeg",
                      text1: "Why join AlFursan?",
                      text2:
                          "Sign up to earn Reward flight upgrades, lounge access and more",
                    );
                  }
                  if (index == 1) {
                    return const Cards(
                      image: "assets/fursan2.jpeg",
                      text1: "Member benefits",
                      text2: "Start earning Miles with your first flight",
                    );
                  } else {
                    return const SizedBox();
                  }
                },
                itemCount: 2,
                allowImplicitScrolling: false,
                controller: SwiperController(),
                loop: false,
                outer: true,
                pagination: SwiperPagination(
                  alignment: Alignment.topCenter,
                  builder: DotSwiperPaginationBuilder(
                    activeSize: 6,
                    size: 6,
                    activeColor: containertext,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
