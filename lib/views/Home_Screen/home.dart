import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_five.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_four.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_one.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_sex.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_three.dart';
import 'package:flowerd/views/Home_Screen/widgets/part_tow.dart';
import 'package:flowerd/views/Home_Screen/widgets/view_all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int containerCount = 11;
  bool optimized = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        
        preferredSize: Size(200, 100),
        
        child: Center(child: Padding(
          padding: EdgeInsets.all(8.0),
          
          child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                    ),
                  ),
        ),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Text(
                    "Gift by Occasion",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              PartOne(containerCount: containerCount),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: home1),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        optimized = !optimized;
                        containerCount = optimized ? 8 : 11;
                      });
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 100),
                      child: Row(
                        children: [
                          Text(
                            'View All Occasions',
                            style: TextStyle(color: home1),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: home1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ViewAll(
                        Type: 'Bestsellers',
                      ),
                      PartTow(),
                      PartThree(),
                      SizedBox(height: 20),
                      PartFour(),
                      ViewAll(
                        Type: 'What\'s new',
                      ),
                      PartSexCount(),
                      ViewAll(
                        Type: 'Shop by Brand',
                      ),
                      PartFive(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}





