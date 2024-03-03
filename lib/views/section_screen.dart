import 'package:floward/bloc/home_bloc.dart';
import 'package:floward/model/model_proudect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({super.key, });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomeBloc>(context).add(ShowEvent());
    return Scaffold(
      appBar: AppBar(title: const Text('ramadan')),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // body: SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Column(
      //     children: [
      //       BlocBuilder<HomeBloc, HomeState>(
      //         builder: (context, state) {
            
      //           if (state is SuccessState) {
      //           return SizedBox(
      //             height: 900,
      //             width: 400,
      //             child: GridView.builder(
      //               padding: const EdgeInsets.only(left: 16, right: 16),
      //               shrinkWrap: true,
      //               gridDelegate:
      //                    const SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisSpacing: 10,
      //                 mainAxisSpacing: 40,
      //                 crossAxisCount: 2,
      //               ),
      //               itemCount: state.proudect1.length,
      //               itemBuilder: (context, index) {
      //                 return ListSectionwidget(itemsection: ,);
      //               },
      //             ),
      //           );}
      //           return const CircularProgressIndicator();
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

// class ListSectionwidget extends StatelessWidget {
//   const ListSectionwidget({
//     super.key,
//     required this.itemsection,
//   });

//   final SectionList itemsection;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Container(
//             height: 150,
//             width: 150,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 color: Colors.amber),
//             child: Image.asset(itemsection.image),
//           ),
//           Text('SAR ${itemsection.price}'),
//           Text(itemsection.name)
//         ],
//       ),
//     );
//   }
// }
