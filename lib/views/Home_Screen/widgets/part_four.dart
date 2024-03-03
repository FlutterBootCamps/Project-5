
import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flowerd/views/Home_Screen/widgets/product_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartFour extends StatelessWidget {
  const PartFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      color: const Color(0xffFCF4F2),
      child: Column(
        children: [
          const Row(
            children: [
              Text(
                "Happy Birthday",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Row(
            children: [
              Text("Make their day extra special!"),
            ],
          ),
          const PartFourCount(),
          Container(
            width: 350,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: black,
                backgroundColor: Colors.white,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.transparent),
                ),
              ),
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text(
                      'Choose Gift Now',
                      style:
                          TextStyle(color: black, fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward,
                      color: home1,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PartFourCount extends StatelessWidget {
  const PartFourCount({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.builder(
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  // Navigate to the detailed page 
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailPage(index: index),
                    ),
                  );
                },
                child: Container(
                  height: 130,
                  width: 130,
                  margin: const EdgeInsets.all(4),
                  child: index >= 0 && index < Part4.length
                      ? Image.asset(
                          Part4[index],
                          fit: BoxFit.cover,
                        )
                      : const Text('Invalid index'),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        Part4name[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Part4price[index],
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}