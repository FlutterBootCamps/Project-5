import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/data_layer/home_data.dart';
import 'package:project_5_saad_alharbi/extensions/screen_handler.dart';
import 'package:project_5_saad_alharbi/views/boarding_screen.dart';
import 'package:project_5_saad_alharbi/views/booking/bloc/booking_bloc.dart';

import '../../widgets/tab_container.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.black38,
          title: Text(
            "أضف الرمز الترويجي",
            style: TextStyle(color: lightGreen, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  color: lightGreen,
                ))
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              alignment: Alignment.centerRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "احجز رحلة",
                    style: TextStyle(
                        color: textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      dividerColor: Colors.transparent,
                      indicatorColor: lightGreen,
                      indicatorSize: TabBarIndicatorSize.tab,
                      unselectedLabelColor: textColor.withOpacity(0.4),
                      labelColor: textColor,
                      labelStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      tabs: const [
                        Tab(
                          child: Text(
                            "متعددة الوجهات",
                            textDirection: TextDirection.rtl,
                          ),
                        ),
                        Tab(
                          child: Text("ذهاب فقط"),
                        ),
                        Tab(
                          child: Text("ذهاب وعودة"),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: context.getWidth(),
                    height: context.getHeight() * 0.40,
                    child: BlocBuilder<BookingBloc, BookingState>(
                      builder: (context, state) {
                        if (state is BookingLoadingState) {
                          return Center(
                            child: CircularProgressIndicator(
                              color: textColor,
                            ),
                          );
                        }
                        if (state is BookingLoadState) {
                          var fromCity =
                              GetIt.I.get<HomeData>().getCity(state.fromCity);

                          var toCity =
                              GetIt.I.get<HomeData>().getCity(state.toCity);
                          return TabBarView(
                            children: [
                              TabContainer(
                                fromCity: fromCity.code!,
                                toCity: toCity.code!,
                              ),
                              TabContainer(
                                fromCity: fromCity.code!,
                                toCity: toCity.code!,
                              ),
                              TabContainer(
                                fromCity: fromCity.code!,
                                toCity: toCity.code!,
                              ),
                            ],
                          );
                        }
                        return Center(
                          child: Text(
                            "No avalible data",
                            style: TextStyle(color: textColor),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: context.getHeight() * 0.15,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: textColor.withOpacity(0.3), width: 1))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.toggle_on_outlined,
                      size: 40,
                      color: textColor.withOpacity(0.7),
                    ),
                    Text(
                      "احجز باستخدام أميال الفرسان",
                      style: TextStyle(
                          color: textColor.withOpacity(0.7),
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    var state = context.read<BookingBloc>().state;
                    if (state is BookingLoadState) {
                      context.read<BookingBloc>().add(BookingBookEvent(
                            fromCity: state.fromCity,
                            toCity: state.toCity,
                          ));
                      context.pushTo(view: const BoardingScreen());
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 50,
                    color: lightGreen,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "البحث عن الرحلات",
                          style: TextStyle(
                              color: textColor,
                              fontSize: 35,
                              fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.search,
                          color: textColor,
                          size: 35,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
