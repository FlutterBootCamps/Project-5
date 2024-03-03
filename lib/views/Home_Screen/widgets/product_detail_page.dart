import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flowerd/views/Cart_Screen/cart.dart';
import 'package:flowerd/views/Home_Screen/widgets/gift_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProductDetailPage extends StatelessWidget {
  final int index;

  ProductDetailPage({required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: Image.asset(
                Part2[index],
                fit: BoxFit.cover,
              ),
            ),
            Row(
              children: [
                Text(
                  '${Part2price[index]}',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              children: [
                Text(
                  'All prices include tax',
                  style: TextStyle(fontSize: 12, color: grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  '${Part2name[index]}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 165,
            child: Text(""),
            ),

            Padding(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                        backgroundColor: home1,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)),
                          side: BorderSide(color: home1),
                        
                        ),
                      ),
                onPressed: () {
                  // Navigate to the Cart screen 
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Cart(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 85),
                        child: Icon(Icons.shopping_cart_checkout,color: white,),
                      ),
                      Text('Add to Cart',style: TextStyle(color: white),),
                    ],
                  ),
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
