
import 'package:flowerd/core/utils/constant_colors.dart';
import 'package:flutter/material.dart';

import 'widgets/account_parts.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF8F8F8),
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Profile",
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        )),
      ),
      body: Center(
        child: Container(
          color: Color(0xffFFFFFF),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: grey,
                radius: 70,
                backgroundImage: AssetImage('assets/images/account/profile.png'),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * (2 / 3),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      backgroundColor: trc),
                  child: const Text(
                    "Sign In or Sign Up",
                    style: TextStyle(color: white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * (2.7 / 3),
                height: 100,
                decoration: const BoxDecoration(
                    color: c3,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                child:ListView(
                  children: const [
                     AccountParts(imagePath: 'assets/images/account/hphone.png', content: 'Customer Care'),
                      AccountParts(imagePath: 'assets/images/account/EA.png', content: 'Language'),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width * (2.7 / 3),
                height: 200,
                decoration: const BoxDecoration(
                    color: c3,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                    child:ListView(
                  children: const [
                     AccountParts(imagePath: 'assets/images/account/hand.png', content: 'Social Responsibility'),
                      AccountParts(imagePath: 'assets/images/account/FAQ.png', content: 'FAQ'),
                      AccountParts(imagePath: 'assets/images/account/book.png', content: 'Terms & Conditions'),
                      AccountParts(imagePath: 'assets/images/account/book.png', content: 'Privacy policy'),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width * (2.7 / 3),
                height: 5,
                decoration: const BoxDecoration(
                    color: c3,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
              ),
              const SizedBox(height: 20),
              const Text("V 6.1.5- (439)"),
            ],
          ),
        ),
      ),
    );
  }
}
