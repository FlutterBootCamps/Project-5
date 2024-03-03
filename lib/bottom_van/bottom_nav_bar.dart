import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saudia_app_project_5/bottom_van/bloc/bottom_nav_bar_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/screens/alfursan_screen.dart';
import 'package:saudia_app_project_5/screens/home_screen.dart';
import 'package:saudia_app_project_5/screens/trips_screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<BottomNavBarBloc>();
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: bgGrey,
            body: const TabBarView(children: [
              HomeScreen(),
              TripsScreen(),
              AlFursanScreen(),
            ]),
            bottomNavigationBar: Material(
              color: white,
              child: TabBar(
                onTap: (value) {
                  bloc.add(ChangeNavEvent(index: value));
                },
                indicatorSize: TabBarIndicatorSize.tab,
                tabAlignment: TabAlignment.center,
                indicatorColor: green,
                indicator: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: green, width: 3),
                  ),
                ),
                labelPadding: const EdgeInsets.symmetric(horizontal: 42),
                unselectedLabelStyle: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: grey),
                labelStyle: const TextStyle(
                    fontSize: 14, fontWeight: FontWeight.bold, color: black),
                tabs: [
                  const Tab(
                    icon: Icon(
                      Icons.home_filled,
                    ),
                    text: "Home",
                  ),
                  const Tab(
                    icon: Icon(
                      Icons.airplanemode_active_rounded,
                    ),
                    text: "Trips",
                  ),
                  Tab(
                    icon: SizedBox(
                        height: context.getWidth() * 0.07,
                        width: context.getWidth() * 0.07,
                        child: SvgPicture.asset("asset/images/saudia_icon.svg",
                            colorFilter: bloc.selectedScreen == 2
                                ? const ColorFilter.mode(black, BlendMode.srcIn)
                                : const ColorFilter.mode(
                                    grey, BlendMode.srcIn))),
                    text: "AlFursan",
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
