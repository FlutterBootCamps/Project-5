import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/screens/book_flight_page.dart';
import 'package:project_5/screens/check_in_page.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/action_button.dart';
import 'package:project_5/widgets/city_select_bottom_sheet.dart';
import 'package:project_5/widgets/city_selector_button.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';
import 'package:project_5/widgets/main_drawer.dart';
import 'package:project_5/widgets/shaded_background.dart';
import 'package:project_5/widgets/text_icon_button.dart';
import 'package:project_5/widgets/top_header.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      // No Appbar was used, since the top elements don't stay at the top of the screen.
      body: Stack(children: [
        BlocConsumer<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is BookingAddedState) {
              context.showSuccessSnackBar(context, state.msg);
            }
          },
          builder: (context, state) {
            if (state is ChangedCityState) {
              return ShadedBackground(
                image: state.city.image!,
              );
            } else {
              return ShadedBackground(
                image: locator.currentFromCity!.image!,
              );
            }
          },
        ),
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                // Used Inkwell instead of IconButton to avoid irrmovable auto padding.
                Builder(
                    //Wrapping the button with a builder enables us to open the drawer normally
                    builder: (context) {
                  return IconButtonUnpadded(
                    icon: const Icon(
                      Icons.menu_rounded,
                      color: whiteColor,
                    ),
                    onTap: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                }),
                ActionButton(
                  text: "Check-in",
                  onTap: () {
                    context.push(context, CheckInPage());
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            TopHeader(
              headerText: "Welcome\nto Saudia",
              tabText: "Join AlFursan",
              extraText: " to enjoy exclusive priviliges",
              tabTextOnTap: () {},
            ),
            const SizedBox(
              height: 32,
            ),
            TextIconButton(
              text: "Book a flight",
              icon: const Icon(
                Icons.airplanemode_active_outlined,
                size: 25,
                color: signatureGreenColor,
              ),
              onTap: () {
                context.push(context, BookFlightPage());
              },
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "What's New",
              style: TextStyle(
                  color: whiteColor, fontSize: 18, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: context.getWidth(context),
              height: 250,
              child: GridView.count(
                mainAxisSpacing: 16,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                childAspectRatio: 1 / 1.45,
                crossAxisCount: 1,
                children: locator.getAllWhatsNew(),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is ChangedCityState) {
                  return CitySelectorButton(
                    currentCity: state.city.cityName,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const CitySelectBottomSheet();
                        },
                      );
                    },
                  );
                } else {
                  return CitySelectorButton(
                    currentCity: locator.currentFromCity!.cityName,
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const CitySelectBottomSheet();
                        },
                      );
                    },
                  );
                }
              },
            ),
            const SizedBox(
              height: 32,
            ),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is ChangedCityState) {
                  return SizedBox(
                    width: context.getWidth(context),
                    height: context.getHeight(context),
                    child: GridView.count(
                      padding: EdgeInsets.zero,
                      mainAxisSpacing: 16,
                      childAspectRatio: 1.45 / 1,
                      crossAxisCount: 1,
                      physics: const NeverScrollableScrollPhysics(),
                      children: locator.getAllOtherCities(state.city),
                    ),
                  );
                }
                return SizedBox(
                  width: context.getWidth(context),
                  height: context.getHeight(context),
                  child: GridView.count(
                    padding: EdgeInsets.zero,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.45 / 1,
                    crossAxisCount: 1,
                    physics: const NeverScrollableScrollPhysics(),
                    children:
                        locator.getAllOtherCities(locator.currentFromCity!),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Explore all destinations",
                  style: TextStyle(
                      color: signatureGreenColor,
                      decoration: TextDecoration.underline,
                      fontSize: 18,
                      decorationColor: signatureGreenColor),
                )),
            const SizedBox(
              height: 32,
            ),
          ],
        )
      ]),
    );
  }
}