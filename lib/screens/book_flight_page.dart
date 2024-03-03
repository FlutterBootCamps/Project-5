import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5/bloc/home_bloc.dart';
import 'package:project_5/data_layer/home_data_layer.dart';
import 'package:project_5/helper/extensions/screen_helper.dart';
import 'package:project_5/screens/search_flights_page.dart';
import 'package:project_5/widgets/one_way_Tab.dart';
import 'package:project_5/utils/colors.dart';
import 'package:project_5/widgets/bottom_button.dart';
import 'package:project_5/widgets/icon_button_unpadded.dart';
import 'package:project_5/widgets/page_header.dart';
import 'package:project_5/widgets/round_trip_tab.dart';

// ignore: must_be_immutable
class BookFlightPage extends StatelessWidget {
  BookFlightPage({super.key});
  TextEditingController dateController = TextEditingController();
  TextEditingController passengersAndClassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: bgColor,
          leading: IconButtonUnpadded(
              onTap: () {
                context.read<HomeBloc>().add(SetDefaultFromCityOnEmptyEvent());
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: iconSignatureGreenColor,
              )),
          actions: [
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Add a promo code",
                  style: TextStyle(
                      color: signatureGreenColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ))
          ],
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: PageHeader(
                header: "Book a flight",
                description: "",
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            TabBar(
                onTap: (value) {
                  if (value == 0) {
                    locator.isRoundTrip = true;
                  } else {
                    locator.isRoundTrip = false;
                  }
                },
                automaticIndicatorColorAdjustment: false,
                dividerColor: darkGreyColor,
                indicator: const UnderlineTabIndicator(
                    borderRadius: BorderRadius.zero,
                    borderSide:
                        BorderSide(color: signatureGreenColor, width: 2)),
                labelStyle: const TextStyle(
                    color: whiteColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                unselectedLabelStyle: const TextStyle(
                    color: inactiveGreyColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                tabs: const [
                  Tab(
                    text: "Round trip",
                  ),
                  Tab(
                    text: "One way",
                  ),
                  Tab(
                    text: "Multi-city",
                  ),
                ]),
            SizedBox(
              width: context.getWidth(context),
              height: context.getHeight(context) * .5,
              child: TabBarView(children: [
                RoundTripTab(
                    dateController: dateController,
                    passengersAndClassController: passengersAndClassController),
                OneWayTab(
                    dateController: dateController,
                    passengersAndClassController: passengersAndClassController),
                const Center(
                    child: Text(
                  "This feature is only available for AlFursan Members",
                  style: TextStyle(color: lightInactiveGreyColor),
                ))
              ]),
            ),
          ],
        ),
        bottomNavigationBar: Container(
          width: context.getWidth(context),
          height: 200,
          decoration: const BoxDecoration(
              color: bgColor,
              border: Border(top: BorderSide(color: darkGreyColor))),
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              BlocConsumer<HomeBloc, HomeState>(
                listener: (context, state) {
                  if (state is SearchingFlightsErrorState) {
                    context.showErrorSnackBar(context, state.msg);
                  }
                },
                builder: (context, state) {
                  if (locator.isSearchAllowed()) {
                    return BottomButton(
                      text: "Search flights",
                      onTap: () {
                        context.push(context, const SearchFlightsPage());
                      },
                    );
                  }
                  return BottomButton(
                    text: "Search flights",
                    onTap: () {
                      context.read<HomeBloc>().add(SearchFlightsEvent());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
