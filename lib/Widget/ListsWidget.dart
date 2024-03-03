import 'package:flutter/material.dart';

class List4Widget extends StatelessWidget {
  const List4Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        catalougewidget(
          text: 'View All Occasions',
        ),
        Textcatologewidget(
          text: ' Everyday Occasions',
        ),
        catalougewidget(
          text: 'Birthday',
        ),
        catalougewidget(
          text: 'Anniversary',
        ),
        catalougewidget(
          text: 'New Baby Born',
        ),
        catalougewidget(
          text: 'Wedding Congratulations',
        ),
        catalougewidget(
          text: 'Graduation',
        ),
        Textcatologewidget(
          text: 'Emotions and Sentiments',
        ),
        catalougewidget(
          text: 'I Love You',
        ),
        catalougewidget(
          text: 'Get Well Soon',
        ),
        catalougewidget(
          text: 'Thank You',
        ),
        catalougewidget(
          text: 'Congratulations',
        ),
        catalougewidget(
          text: 'Just Because',
        ),
        catalougewidget(
          text: 'Sympathy',
        ),
      ],
    );
  }
}

class List3Widget extends StatelessWidget {
  const List3Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        catalougewidget(
          text: 'View All Gifts & Bundles',
        ),
        Textcatologewidget(
          text: 'Food & Beverages',
        ),
        catalougewidget(
          text: 'Cakes',
        ),
        catalougewidget(
          text: 'Chocolates',
        ),
        catalougewidget(
          text: 'Arabian Sweet',
        ),
        catalougewidget(
          text: 'Coffee and tea',
        ),
        catalougewidget(
          text: 'Dates',
        ),
        Textcatologewidget(
          text: 'Fragrance & Beauty',
        ),
        catalougewidget(
          text: 'Perfume',
        ),
        catalougewidget(
          text: 'Arabian Scents',
        ),
        catalougewidget(
          text: 'Skin & Body Care',
        ),
        catalougewidget(
          text: 'Home Sprays',
        ),
        Textcatologewidget(
          text: 'Jewellery',
        ),
        catalougewidget(
          text: 'Jewellery',
        ),
        catalougewidget(
          text: 'Baby Jewellery',
        ),
        catalougewidget(
          text: 'Watches',
        ),
        Textcatologewidget(
          text: 'More',
        ),
        catalougewidget(text: 'Men `s Gifting'),
        catalougewidget(
          text: 'Premium Gifts',
        ),
        catalougewidget(
          text: 'Toys',
        ),
        catalougewidget(
          text: 'New Baby Reception',
        ),
        catalougewidget(
          text: 'Heritage',
        ),
        catalougewidget(
          text: 'Personalized Gifts',
        ),
        catalougewidget(
          text: 'Fashion',
        ),
        catalougewidget(
          text: 'Women`s Gifting',
        ),
        catalougewidget(
          text: 'Lifestyle',
        ),
      ],
    );
  }
}

class LIst2widget extends StatelessWidget {
  const LIst2widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LIst1widget();
  }
}

class LIst1widget extends StatelessWidget {
  const LIst1widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        catalougewidget(
          text: 'View All Flowers & Plants',
        ),
        Textcatologewidget(
          text: ' Product Type',
        ),
        catalougewidget(
          text: 'Hand Bouquets',
        ),
        catalougewidget(
          text: 'Flowers in Vases',
        ),
        catalougewidget(
          text: 'Plants',
        ),
        catalougewidget(
          text: 'Only Flowers',
        ),
        catalougewidget(
          text: 'Flowers in Baskets and Trays',
        ),
        catalougewidget(
          text: 'Preserved Flowers',
        ),
        catalougewidget(
          text: 'Top Table Arrangements',
        ),
        catalougewidget(
          text: 'Flowers Favors',
        ),
        catalougewidget(
          text: 'Flowers Sculptures',
        ),
        catalougewidget(
          text: 'Flowers Accessories',
        ),
        Textcatologewidget(
          text: 'Flower Type',
        ),
        catalougewidget(
          text: 'Roses',
        ),
        catalougewidget(
          text: 'Lilies',
        ),
        catalougewidget(
          text: 'Tulips',
        ),
        catalougewidget(
          text: 'Hydrangea',
        ),
        catalougewidget(
          text: 'Carnations',
        ),
        catalougewidget(
          text: 'Chrysanthemums',
        ),
        catalougewidget(
          text: 'Baby Roses',
        ),
        Textcatologewidget(
          text: 'Flower Color',
        ),
        catalougewidget(
          text: 'Red',
        ),
        catalougewidget(
          text: 'White',
        ),
        catalougewidget(
          text: 'Purple',
        ),
        catalougewidget(
          text: 'Yellow',
        ),
        catalougewidget(
          text: 'Pink',
        ),
        catalougewidget(
          text: 'Blue',
        ),
        catalougewidget(
          text: 'Orange',
        ),
        catalougewidget(
          text: 'Peach',
        ),
        catalougewidget(
          text: 'Fuchsia',
        ),
      ],
    );
  }
}

class Textcatologewidget extends StatelessWidget {
  Textcatologewidget({super.key, this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}

class catalougewidget extends StatelessWidget {
  catalougewidget({super.key, this.text});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: ListTile(
        leading: Text(
          '$text',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        trailing: Icon(
          Icons.keyboard_arrow_right_sharp,
          color: Color(0xffb7a098),
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffb7a098),
          ),
        ),
      ),
    );
  }
}
