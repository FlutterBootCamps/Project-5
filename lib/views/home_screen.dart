import 'package:floward/Widget/ContainerWidget.dart';
import 'package:floward/Widget/appbarwidget.dart';
import 'package:floward/Widget/homewidgets.dart';
import 'package:floward/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    //لازم استدعي البلوك و اعطيه الايفنت
    BlocProvider.of<HomeBloc>(context).add(ShowEvent());

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
          preferredSize: const Size(60, 100), child: AppBarWidget()),
      backgroundColor: const Color(0xffffffff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text('Gift by Occasion'),
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state is SuccessState) {
                  return Visibility(
                    visible: isVisible,
                    child: Container(
                      child: GridView.builder(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 30,
                          crossAxisCount: 4,
                        ),
                        itemCount: state.proudect1.length,
                        itemBuilder: (context, index) {
                          return ContainerWidget(
                            item: state.proudect1[index],
                          );
                        },
                      ),
                    ),
                  );
                }
                return const CircularProgressIndicator();
              },
            ),
            Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(border : Border.all(
                            color: const Color(0xff649197),
                            width: 1),
                        
                        color: const Color(0XFFFFFFFF),
                    ),
                    child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'View All Occasions',
                            style: TextStyle(fontWeight: FontWeight.bold,color: const Color(0xff649197),),
                            
                          ),Icon(Icons.keyboard_arrow_down_sharp,color: const Color(0xff649197),),
                        ],
                      ),
                     ),
            //---1----
            Home1Widget(),
            //-----2------
            Home2Widget(),
            //-----3-------
               Home3Widget(),
          ],
        ),
      ),
    );
  }
}


