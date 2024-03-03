
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flowerd/views/Home_Screen/widgets/product_detail_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PartSexCount extends StatelessWidget {
  const PartSexCount({
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
                  child: index >= 0 && index < Part6.length
                      ? Image.asset(
                          Part6[index],
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
                        Part6name[index],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        Part6price[index],
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