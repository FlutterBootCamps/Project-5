import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
class Home3Widget extends StatelessWidget {
  const Home3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.all(8),
       height: 200,
       width: 343,
       decoration: const BoxDecoration(
         border: Border(
           bottom: BorderSide(width: 1, color: Color(0xff2C2C2C)),
         ),
       ),
       child:  Card(
             color: const Color(0xff1E1E1E),
             child: ImageSlideshow(
               width:
                   double.infinity, // Width of the [ImageSlideshow].
               height: 180,
               initialPage: 0,
               indicatorBottomPadding: 157,
               indicatorColor: Colors.white,
               indicatorBackgroundColor: Colors
                   .grey,
               // Called whenever the page in the center of the viewport changes.
               onPageChanged: (value) {
                 print('Page changed: $value');
               },
               autoPlayInterval: 4000, // Auto scroll interval.
               isLoop: false, // The color to paint behind th indicator.
               // The widgets to display in the [ImageSlideshow]
               children: [
                 Image.asset(
                   'assets/r.jpeg',
                   fit: BoxFit.fill,
                 ),
                 Image.asset(
                   'assets/s.jpeg',
                   fit: BoxFit.fill,
                 ),
                 Image.asset(
                   'assets/r.jpegrd',
                   fit: BoxFit.fill,
                 ),
                  Image.asset(
                   'assets/h.jpegrd',
                   fit: BoxFit.fill,
                 ),
                  Image.asset(
                   'assets/p.jpegrd',
                   fit: BoxFit.fill,
                 ),
               ], // Loops back to first slide.
             ),
           ),);
  }
}

class Home2Widget extends StatelessWidget {
  const Home2Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Color(0xfffdf3f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Happy Birthday',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)), SizedBox(height: 5,),
          const Text('Make their day extra special!',
              style: TextStyle(fontSize: 12)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                HomeHappyBirthdayWidget(
                  img: 'assets/311.jpeg',
                  price: 299,
                  text: 'Birthday Chamomile Flow...',
                ),
                HomeHappyBirthdayWidget(
                  img: 'assets/211.jpeg',
                  price: 349,
                  text: 'Floward Small Mixed Cho...',
                ),
                HomeHappyBirthdayWidget(
                  img: 'assets/111.jpeg',
                  price: 255,
                  text: 'Floral Happy Birthday Ca...',
                ),
                HomeHappyBirthdayWidget(
                  img: 'assets/611.jpeg',
                  price: 299,
                  text: 'Flora Vibe | Pink Wrap',
                ),
                HomeHappyBirthdayWidget(
                  img: 'assets/511.jpeg',
                  price: 445,
                  text: 'Hanoverian Mix Chocolat...',
                ),
                HomeHappyBirthdayWidget(
                  img: 'assets/611.jpeg',
                  price: 419,
                  text: 'Pink Heart | 25 Roses',
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 10, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: const Color(0XFFFFFFFF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    spreadRadius: 0,
                    blurRadius: 10,
                  )
                ]),
            child: const Row(children: [
              SizedBox(
                width: 100,
              ),
              Text(
                'Choose Gifts Now',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 100,
              ),
              Icon(Icons.arrow_right_alt_sharp),
            ]),
          )
        ],
      ),
    );
  }
}

class Home1Widget extends StatelessWidget {
  const Home1Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CircelWidget(
              img: 'assets/care-removebg-preview.png',
              text: 'Express Delivery',
            ),
            CircelWidget(
              img: 'assets/1-removebg-preview.png',
              text: 'Hand Bouquets',
            ),
            CircelWidget(
              img: 'assets/2-removebg-preview.png',
              text: 'Flowers in Vases',
            ),
            CircelWidget(
                img: 'assets/3-removebg-preview.png', text: 'Cakes'),
            CircelWidget(
                img: 'assets/4-removebg-preview.png',
                text: 'Chocolates'),
            CircelWidget(
                img: 'assets/5-removebg-preview.png',
                text: 'Arabian Sweet'),
            CircelWidget(
                img: 'assets/6-removebg-preview.png', text: 'Perfume'),
            CircelWidget(
                img: 'assets/7-removebg-preview.png', text: 'Plants'),
            CircelWidget(
                img: 'assets/8-removebg-preview.png',
                text: 'Jewellery'),
            CircelWidget(
                img: 'assets/10-removebg-preview.png',
                text: 'Men`s Gifting'),
            CircelWidget(
                img: 'assets/11-removebg-preview.png',
                text: 'Premium Gifts'),
            CircelWidget(
                img: 'assets/12-removebg-preview.png', text: 'Toys'),
          ],
        ),
      ),
    );
  }
}

class HomeHappyBirthdayWidget extends StatelessWidget {
  HomeHappyBirthdayWidget({super.key, this.img, this.price, this.text});

  String? img;
  String? text;
  int? price;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Container(
            margin: EdgeInsets.all(8),
            height: 120,
            width: 120,
            child: Image.asset("$img")),
        Text(
          "$text",
          style: TextStyle(fontSize: 10),
        ),
        Text(
          'SAR${price}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
    );
  }
}

class CircelWidget extends StatelessWidget {
  CircelWidget({super.key, this.img, this.text});
  String? img;
  String? text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.only(bottom: 10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xfff1e8e3),
          ),
          child: Image.asset('$img'),
        ),
        Text(
          '$text',
          style: TextStyle(fontSize: 8),
        ),
      ],
    );
  }
}