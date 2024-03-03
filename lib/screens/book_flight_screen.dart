import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:saudia_app_project_5/bloc/saudia_bloc.dart';
import 'package:saudia_app_project_5/constant/color.dart';
import 'package:saudia_app_project_5/constant/space.dart';
import 'package:saudia_app_project_5/helper/screen_helper.dart';
import 'package:saudia_app_project_5/model/saudia_model.dart';
import 'package:saudia_app_project_5/widget/date_picker.dart';
import 'package:saudia_app_project_5/widget/multi_city_widget.dart';
import 'package:saudia_app_project_5/widget/one_way_widget.dart';
import 'package:saudia_app_project_5/widget/passenger_bottom_sheet_widget.dart';
import 'package:saudia_app_project_5/widget/promo_code_widget.dart';
import 'package:saudia_app_project_5/widget/round_trip_widget.dart';
import 'package:saudia_app_project_5/widget/travel_cities.dart';

class BookFlightScreen extends StatelessWidget {
  BookFlightScreen({super.key, this.city});
  SaudiaModel? city;

  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final bloc = context.read<SaudiaBloc>();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: bgGrey,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: AppBar(
            backgroundColor: bgGrey,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: green,
              ),
            ),
            actions: [
              PromoCode(),
               ],
            flexibleSpace: const Padding(
                padding: EdgeInsets.only(top: 80, left: 24),
                child: Text(
                  "Book a flight",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                )),
            bottom: const TabBar(
              indicatorColor: green,
              indicatorSize: TabBarIndicatorSize.tab,
              tabAlignment: TabAlignment.fill,
              dividerColor: grey,
              labelStyle: TextStyle(
                  color: black, fontSize: 18, fontWeight: FontWeight.w600),
              unselectedLabelStyle: TextStyle(
                  color: grey, fontSize: 18, fontWeight: FontWeight.w400),
              tabs: [
                Tab(text: "Round trip"),
                Tab(text: "One way"),
                Tab(text: "Multi-city"),
              ],
            ),
          ),
        ),

        body: const TabBarView(
          children: [
            RoundTrip(),
             OneWay(),
             MultiCity(),
          ],
        ),
      ),
    );
  }
}
