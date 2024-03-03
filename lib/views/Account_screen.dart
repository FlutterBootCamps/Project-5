import 'package:floward/Widget/account_container_widget.dart';
import 'package:floward/Widget/linewidhet.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Profile',
              style: TextStyle(color: Color(0xff4e4f51)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color(0xfff8f8f8),
                  borderRadius: BorderRadius.circular(80)),
              child: Stack(children: [
                Positioned(
                  top: 3,
                  left: 3,
                  child: Container(
                    height: 93,
                    width: 93,
                    decoration: BoxDecoration(
                        color: const Color(0xfff8f8f8),
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                            color: const Color(0xffc6c6c6), width: 4)),
                    child: const Icon(
                      Icons.person,
                      size: 80,
                      color: Color(0xffc6c6c6),
                    ),
                  ),
                ),
              ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: const Color(0xff0d697e),
              ),
              child: const Center(
                  child: Text(
                'Sign in or Sign up',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfff8f8f8)),
              child: Column(children: [
                AccountContaineerWidget(
                  text: 'Customer Care',
                  image:
                      'assets/WhatsApp_Image_2024-03-02_at_19.54.46_6cd30b8f-removebg-preview.png',
                  wid: 150,
                ),
                const lineWidget(),
                AccountContaineerWidget(
                  text: 'العربية',
                  image:
                      'assets/WhatsApp_Image_2024-03-02_at_19.54.46_acddc712-removebg-preview.png',
                  wid: 220,
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 136,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfff8f8f8)),
              child: Column(children: [
                AccountContaineerWidget(
                  text: 'Social Responsibility',
                  image:
                      'assets/WhatsApp_Image_2024-03-02_at_19.54.47_3bcbcda7-removebg-preview.png',
                  wid: 119,
                ),
                const lineWidget(),
                AccountContaineerWidget(
                  text: 'FAQ',
                  image:
                      'assets/WhatsApp_Image_2024-03-02_at_19.54.47_08bb0f2d-removebg-preview.png',
                  wid: 240,
                ),
                const lineWidget(),
                AccountContaineerWidget(
                  text: 'Terms & Conditions',
                  image:
                      'assets/WhatsApp_Image_2024-03-02_at_19.54.45_d461faf2-removebg-preview.png',
                  wid: 123,
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              '6.40.0.14',
              style: TextStyle(fontSize: 13, color: Color(0xffbbbbbb)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Luxury Roses Trinding Company',
              style: TextStyle(
                  fontSize: 13,
                  color: Color(
                    0xffbbbbbb,
                  )),
            ),
            const Text(
              'VAT No.31041050480003',
              style: TextStyle(fontSize: 13, color: Color(0xffbbbbbb)),
            ),
          ],
        ),
      ),
    );
  }
}
