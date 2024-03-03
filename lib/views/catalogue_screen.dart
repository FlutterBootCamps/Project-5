import 'package:floward/Widget/ListsWidget.dart';
import 'package:flutter/material.dart';

class CatalogueScreen extends StatelessWidget {
  CatalogueScreen({super.key});
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: AppBar(
          backgroundColor: Color(0xffFFFFFF),
          title: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 45,

            //padding: EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                )),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: InputBorder.none,

                hintText: 'what are you looking for?',
                hintStyle: TextStyle(
                  color: Color(0xffB8B8B8),
                  fontSize: 13,
                ),
                // Icon on the left side of the text field
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          bottom: TabBar(
            padding: EdgeInsets.only(left: 10, right: 10),
            dividerColor: const Color(0xffffffff), //Color(0xffb7a098),
            labelPadding: const EdgeInsets.all(1),
            indicatorColor: const Color(0xffb7a098),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color.fromARGB(255, 0, 0, 0),
            unselectedLabelColor: const Color(0xff888888),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
            tabs: const [
              Tab(text: 'Flowers & Plants'),
              Tab(text: 'Gifts & Bundles'),
              Tab(text: 'Occasions'),
              Tab(text: 'Express Delivery'),
            
            ],
          ),
        ),
        body: TabBarView(children: [
          LIst2widget(),

          List3Widget(),
          List4Widget(),
          ListView(
            children: [
    
           catalougewidget(text: 'View All Express Delivery',),
            ],
          ),
        
        ]),
      ),
    );
  }
}

