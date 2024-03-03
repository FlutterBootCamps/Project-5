import 'package:floward/views/home_screen.dart';
import 'package:flutter/material.dart';

class CartScrenn extends StatelessWidget {
  const CartScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Image.asset(
                  'assets/cartimg.jpg'), //,style: TextStyle(fontSize: ,fontWeight: ,color: ),
              const Text(
                'Your Cart is Empty!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4f5354)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Looks like you haven`t added anything to your cart yet.',
                style: TextStyle(fontSize: 14, color: Color(0xff4f5354)),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Container(
                  width: 380,
                  height: 50,
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff006784),
                  ),
                  child: const Center(
                    child: Text(
                      'Start Shopping',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              )
            ])),
      ),
    );
  }
}
