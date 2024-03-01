import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';
import 'package:project_5/widgets/main_drawer.dart';
import 'package:project_5/widgets/page_header.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class AlfursanPage extends StatelessWidget {
  const AlfursanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(
        viewportFraction: 1.1, initialPage: locator.selectedFursanCardIndex);
    return Scaffold(
      backgroundColor: bgColor,
      drawer: const MainDrawer(),
      appBar: AppBar(
        backgroundColor: bgColor,
        leading: Builder(
            //Wrapping the button with a builder enables us to open the drawer normally
            builder: (context) {
          return IconButtonUnpadded(
            icon: const Icon(
              Icons.menu_rounded,
              color: iconSignatureGreenColor,
            ),
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                "Login",
                style: TextStyle(
                  color: signatureGreenColor,
                  fontSize: 14,
                ),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: [
            const SizedBox(
              height: 28,
            ),
            const PageHeader(
              header: "AlFursan",
              description: "Log in to view your Miles, book your next trip and much more.",
            ),
            const SizedBox(
              height: 28,
            ),
            SizedBox(
              width: context.getWidth(context),
              height: 450,
              child: PageView(
                onPageChanged: (index) {
                  context.read<HomeBloc>().add(ChangeFursanCardEvent(index: index));
                },
                controller: pageController,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                children:
                    locator.getAllFursanCards(pageController.viewportFraction),
              ),
            ),
            const SizedBox(height: 16,),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Center(
                  child: AnimatedSmoothIndicator(
                    onDotClicked: (index) { //In the real app there's a UI Glitch when clicking the dot indicator, it changes but the card itself dosen't switch, this has been fixed here.
                      context.read<HomeBloc>().add(ChangeFursanCardEvent(index: index));
                      pageController.animateToPage(index, duration: const Duration(milliseconds: 500), curve: Curves.linear);
                    },
                    activeIndex: locator.selectedFursanCardIndex,
                    count: locator.getAllFursanCards(pageController.viewportFraction).length,
                    effect: const ColorTransitionEffect(
                        activeDotColor: blackColor,
                        dotColor: greyTextColor,
                        dotHeight: 8,
                        dotWidth: 8),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

