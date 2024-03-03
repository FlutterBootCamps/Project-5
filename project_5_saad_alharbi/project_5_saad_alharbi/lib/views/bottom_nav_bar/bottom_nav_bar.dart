import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_5_saad_alharbi/views/bottom_nav_bar/bloc/bottom_nav_bar_bloc.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavBarBloc(),
      child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
        builder: (context, state) {
          final bloc = context.read<BottomNavBarBloc>();
          return Builder(builder: (context) {
            return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                backgroundColor: Colors.black,
                unselectedItemColor: textColor.withOpacity(0.3),
                selectedItemColor: lightGreen,
                selectedFontSize: 20,
                unselectedFontSize: 20,
                type: BottomNavigationBarType.fixed,
                onTap: (value) {
                  bloc.add(ChangePageEvent(indexPage: value));
                },
                currentIndex: bloc.currentIndex,
                items: [
                  BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        "assets/icons/saudia_icon.svg",
                        width: 30,
                        colorFilter: bloc.currentIndex == 0
                            ? ColorFilter.mode(
                                lightGreen,
                                BlendMode.srcIn,
                              )
                            : ColorFilter.mode(
                                textColor.withOpacity(0.3),
                                BlendMode.srcIn,
                              ),
                      ),
                      label: 'الفرسان'),
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.airplanemode_active,
                        size: 30,
                      ),
                      label: 'الرحلات'),
                  const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                        size: 30,
                      ),
                      label: 'الصفحة الرئسيه'),
                ],
              ),
              body: bloc.pages[bloc.currentIndex],
            );
          });
        },
      ),
    );
  }
}
