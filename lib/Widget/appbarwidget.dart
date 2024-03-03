import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
   AppBarWidget({
    super.key,
  });
   TextEditingController nameController = TextEditingController();
   //bottomsheet
 void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 800,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          child: Container(
            margin: const EdgeInsets.all(24),
            height: 44,
            width: 343,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              // color: Colors.grey[850],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    //-----textfield-------
    return AppBar(
        backgroundColor: const Color(0xfff7f6f2),
        toolbarHeight: 120,
        flexibleSpace: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                _showBottomSheet(context);
              },
              child: Row(
                children: [
                  SizedBox(width: 10,),
                  Image.asset(
                    'assets/TruckIcon.png',
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Deliver to Recipient in'),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Image.asset(
                            'assets/ksa.jpg',
                            height: 22,
                            width: 22,
                          ),
                          SizedBox(width: 10,),
                          const Text('Riyadh'),
                          const Icon(Icons.keyboard_arrow_down),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            //-----textfield-------
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 35,
              
              //padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(2),border: Border.all(
                color: Colors.grey,width: 1,)),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                 
                  hintText: 'what are you looking for?',
                  hintStyle: TextStyle(color: Color(0xffB8B8B8),fontSize: 13,),
                  // Icon on the left side of the text field
                  suffix: Icon(Icons.search),
                ),
              ),
            ),
          ],
        ),
      );
  }
}