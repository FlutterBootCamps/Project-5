import 'package:floward/Widget/ContainerWidget.dart';
import 'package:floward/Widget/appbarwidget.dart';
import 'package:floward/bloc/home_bloc.dart';
import 'package:floward/data/data_set.dart';
import 'package:floward/data_layer/data_layer.dart';
import 'package:floward/model/model_proudect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  // final data =GetIt.I.get<DataService>().allProducts;
    return Scaffold(
      appBar:
          PreferredSize(preferredSize: const Size(60, 100), child: AppBarWidget()),
      backgroundColor: const Color(0xffffffff),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            // GridView(
            //         shrinkWrap: true,
            //         gridDelegate:
            //             const SliverGridDelegateWithFixedCrossAxisCount(
            //           crossAxisSpacing: 20,
            //           mainAxisSpacing: 10,
            //           crossAxisCount: 4,
            //         ),
            //         children: [
            //           Container(color: Colors.amber,height: 30,width: 30,),
            //            Container(color: Colors.amber,height: 30,width: 30,),
            //             Container(color: Colors.amber,height: 30,width: 30,),
            //              Container(color: Colors.amber,height: 30,width: 30,),
            //               Container(color: Colors.amber,height: 30,width: 30,),
            //                Container(color: Colors.amber,height: 30,width: 30,),
            //                 Container(color: Colors.amber,height: 30,width: 30,),
            //                  Container(color: Colors.amber,height: 30,width: 30,),
            //                   Container(color: Colors.amber,height: 30,width: 30,),
            //                    Container(color: Colors.amber,height: 30,width: 30,),
            //         ]),
        Text('ggggggg'),
          
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state){
                if(state is SuccessState){return
           
                  GridView(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,
                    ),
                    children: [
           
         ...List.generate(state.proudect1.length, (index) {
                        return ContainerWidget(item: state.proudect1[index],);
                      })
                    ],
                  );
              
                }
                return Text('error');
                
              },
            )
          ],
        ),
      ),
    );
  }
}
    