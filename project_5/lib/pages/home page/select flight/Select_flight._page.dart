import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_5/helper/colors.dart';
import 'package:project_5/helper/extintion.dart';
import 'package:project_5/helper/sized.dart';
import 'package:project_5/pages/home%20page/select%20flight/Multy_city.dart';
import 'package:project_5/pages/home%20page/select%20flight/bloc/select_flight_bloc.dart';
import 'package:project_5/pages/home%20page/select%20flight/one_way_page.dart';
import 'package:project_5/pages/home%20page/select%20flight/round_page.dart';

import 'widgets/add_promo.dart';

class SelectFlight extends StatelessWidget {
  const SelectFlight({super.key, this.city1, this.city2});
  final String? city1;
  final String? city2;

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller = TextEditingController();
    final bloc = context.read<SelectFlightBloc>();
    List<Widget> views = [
      const RoundPage(),
      const OneWayPage(),
      const MultiCityPage(),
    ];
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: green,
              size: 30,
            )),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return BlocBuilder<SelectFlightBloc, SelectFlightState>(
                      builder: (context, state) {
                        return Container(
                          height: context.getHeight() * 0.98,
                          width: context.getWidth(),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: background,
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  gapH10,
                                  InkWell(
                                    onTap: () {
                                      context.pop();
                                    },
                                    child: Text("Cancel   ",
                                        style: GoogleFonts.notoSerifKannada(
                                            color: green,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500)),
                                  )
                                ],
                              ),
                              gapH20,
                              Text(
                                "Add promo code",
                                style: GoogleFonts.notoSerifKannada(
                                    color: Colors.white,
                                    fontSize: 35,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "apply your promo code by entering it below.",
                                style: GoogleFonts.notoSerifKannada(
                                    color: containertext,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w300),
                              ),
                              gapH20,
                              Container(
                                height: context.getWidth() / 10,
                                width: context.getWidth(),
                                decoration: BoxDecoration(
                                  color: container,
                                ),
                                child: TextField(
                                  onSubmitted: (value) {
                                    bloc.add(AddPromoEvent());
                                  },
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Promo code",
                                    hintStyle: TextStyle(color: green),
                                  ),
                                  controller: controller,
                                ),
                              ),
                              SizedBox(
                                height: context.getHeight() / 1.4,
                              ),
                              controller.text.isNotEmpty
                                  ? AddPromo(
                                      color1: green,
                                      color2: whit,
                                      onPressed: () {
                                        context.pop();
                                      },
                                    )
                                  : AddPromo(
                                      color1: container,
                                      color2: containertext,
                                      onPressed: () {},
                                    )
                            ],
                          ),
                        );
                      },
                    );
                  });
            },
            child: Text(
              "Add a promo code",
              style: GoogleFonts.notoSerifKannada(
                  color: green, fontSize: 15, fontWeight: FontWeight.w400),
            ),
          ),
          gapW10
        ],
      ),
      body: ListView(
        children: [
          gapH10,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Book a flight",
              style: GoogleFonts.notoSerifKannada(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.w500),
            ),
          ),
          gapH20,
          gapH10,
          DefaultTabController(
            length: 3,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: green,
              dividerColor: div,
              dividerHeight: 0.3,
              enableFeedback: false,
              onTap: (value) {
                bloc.add(ChangeTapsEvent(index: value));
              },
              labelColor: whit,
              tabs: const <Widget>[
                Tab(text: 'Round trip'),
                Tab(text: 'One way'),
                Tab(text: 'Multi-city'),
              ],
            ),
          ),
          BlocBuilder<SelectFlightBloc, SelectFlightState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    if (city1 != null &&
                        city2 != null &&
                        bloc.selctedIndex == 0)
                      RoundPage(city1: city1, city2: city2),
                    views[bloc.selctedIndex],
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
