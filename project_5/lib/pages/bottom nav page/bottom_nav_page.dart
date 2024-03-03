import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/pages/bottom%20nav%20page/bloc/navigation_bloc.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NavigationBloc>();

    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(
            bottomNavigationBar: Material(
              color: background,
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      border: Border(top: BorderSide(color: green, width: 4))),
                  indicatorColor: green,
                  enableFeedback: false,
                  onTap: (value) {
                    bloc.add(ChangeNavEvent(selectedPage: value));
                  },
                  labelColor: whit,
                  tabs: <Widget>[
                    const Tab(icon: Icon(Icons.home_filled), text: 'Home'),
                    const Tab(
                        icon: Icon(Icons.airplanemode_active), text: 'Trips'),
                    Tab(
                        icon: bloc.selctedIndex == 2
                            ? SizedBox(
                                height: context.getWidth() / 15,
                                width: context.getWidth() / 15,
                                child: SvgPicture.asset(
                                    "assets/saudia_icon.svg",
                                    fit: BoxFit.cover,
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn)),
                              )
                            : SizedBox(
                                height: context.getWidth() / 15,
                                width: context.getWidth() / 15,
                                child: SvgPicture.asset(
                                    "assets/saudia_icon.svg",
                                    colorFilter: ColorFilter.mode(
                                        icon, BlendMode.srcIn)),
                              ),
                        text: 'AlFursan'),
                  ],
                ),
              ),
            ),
            body: bloc.views[bloc.selctedIndex]);
      },
    );
  }
}
