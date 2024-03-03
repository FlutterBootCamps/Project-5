import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  _CatalogueState createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  final List<String> allTopics = [
    "Hand Bouquets",
    "Flowers in Vases",
    "Plants",
    "Only Flowers",
    "Flowers in Baskets and Trays",
    "Preserved Flowers",
    "Top Table Arrangements",
    "Flowers Favors",
    "Flowers Sculptures",
    "Flowers Accessories",
    "Roses",
    "Lilies",
    "Tulips",
    "Hydrangea",
    "Carnations",
    "Chrysanthemums",
    "Baby Roses",
    "Red",
    "White",
    "Purple",
    "Yellow",
    "Pink",
    "Blue",
    "Orange",
    "Peach",
    "Fuchsia",
  ];

  List<String> filteredTopics = [];

  @override
  void initState() {
    super.initState();
    filteredTopics = allTopics;
  }

  void filterTopics(String query) {
    setState(() {
      if (query.isNotEmpty) {
        filteredTopics = allTopics
            .where((topic) => topic.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        filteredTopics = allTopics;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // specify the number of tabs
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            indicatorColor: Colors.red, // corrected red color
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelStyle:
                TextStyle(color: Colors.black), // corrected black color
            labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold), // corrected black color
            tabs: [
              Tab(text: 'Flowers & Plants'),
              Tab(text: 'Gift & Bundles'),
              Tab(text: 'Occasions'),
              Tab(text: 'Express Delivery'),
              Tab(text: 'Brands'),
            ],
          ),
          actions: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'What are you looking for?',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onChanged: filterTopics,
                ),
              ),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          "View All Flowers & Plants",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 18, color: Color.fromARGB(255, 238, 147, 11))
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Row(
                      children: [
                        Text(
                          'Product Type',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    for (String topic in filteredTopics) ...[
                      LineTopic(Topic: topic),
                      const SizedBox(height: 15),
                    ],
                  ],
                ),
              ),
            ),
            const Center(child: Text('Gift & Bundles')),
            const Center(child: Text('Occasions')),
            const Center(child: Text('Express Delivery')),
            const Center(child: Text('Brands')),
          ],
        ),
      ),
    );
  }
}

class LineTopic extends StatelessWidget {
  const LineTopic({
    Key? key,
    required this.Topic,
  }) : super(key: key);
  final String Topic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              Topic,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 18,
              color: Color.fromARGB(255, 238, 147, 11),
            )
          ],
        ),
        const SizedBox(height: 15),
        Container(
          height: 1,
          width: MediaQuery.of(context).size.width * (2.9 / 3),
          color: Colors.red[100],
        )
      ],
    );
  }
}
