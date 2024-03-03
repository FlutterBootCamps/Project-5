import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_5_saad_alharbi/constant/colors.dart';
import 'package:project_5_saad_alharbi/views/trips/bloc/trips_bloc.dart';
import 'package:project_5_saad_alharbi/widgets/page_drawer.dart';
import 'package:project_5_saad_alharbi/widgets/plane_ticket.dart';

class TripsScreen extends StatelessWidget {
  const TripsScreen({super.key});
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: lightGreen),
      ),
      endDrawer: PageDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "الرحلات",
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 50),
                ),
                BlocBuilder<TripsBloc, TripsState>(
                  builder: (context, state) {
                    if (state is TripsLoadingState) {
                      return Center(
                        child: CircularProgressIndicator(
                          color: textColor,
                        ),
                      );
                    }
                    if (state is TripsLoadState) {
                      return ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.ticket.length,
                          itemBuilder: ((context, index) {
                            return PlaneTicket(
                              endTime: state.ticket[index]['ticket']['endTime'],
                              fromCity: state.ticket[index]['fromCity'],
                              toCity: state.ticket[index]['toCity'],
                              price: state.ticket[index]['ticket']['price'],
                              startTime: state.ticket[index]['ticket']
                                  ['startTime'],
                              stop: state.ticket[index]['ticket']['stop'],
                              totalTime: state.ticket[index]['ticket']
                                  ['totalTime'],
                            );
                          }));
                    }
                    return Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "لم يتم العثور على رحلات",
                            style: TextStyle(color: textColor, fontSize: 30),
                          ),
                          Image.asset("assets/images/noflytes.png")
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          alignment: Alignment.center,
          height: 55,
          child: Text(
            "اضف رحلة",
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          color: lightGreen,
        ),
      ),
    );
  }
}
