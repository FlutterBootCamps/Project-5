import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_5/bloc/navigation_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/top_indicator.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationBloc(),
      child: BlocBuilder<NavigationBloc, NavigationState>(
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
              bottomNavigationBar: Material(
                  color: bgColor,
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: locator.currentPageIndex,
                    child: TabBar(
                        unselectedLabelColor: inactiveGreyColor,
                        labelColor: whiteColor,
                        labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                        indicator: TopIndicator(),
                        indicatorSize: TabBarIndicatorSize.tab,
                        onTap: (index) {
                          context.read<NavigationBloc>().add(ChangePageEvent(index: index));
                        },
                        tabs: [
                          const Tab(text: "Home", icon: Icon(Icons.home_filled,)),
                          const Tab(
                              text: "Trip",
                              icon: Icon(Icons.airplanemode_active_outlined,)),
                          Tab(
                              text: "AlFursan",
                              icon: SvgPicture.asset("assets/icons/saudia_icon.svg", colorFilter: ColorFilter.mode((locator.currentPageIndex == 2) ? whiteColor : inactiveGreyColor, BlendMode.srcIn,),width: 40, height: 25,)),
                        ]),
                  )),
              body: locator.pages[locator.currentPageIndex],
            );
        },
      ),
    );
  }
}
