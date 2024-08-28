import 'package:flutter/material.dart';

import '../widgets/ComboCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.orange),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.orange),
              onPressed: () {
                // Handle cart button press
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView(
            children: [
              const Text(
                'Hello Tony, What fruit salad\ncombo do you want today?',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: 'Search for fruit salad combos',
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.segment_outlined,
                        color: Color(0xFFFFB347),
                      ))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Recommended Combo',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ComboCard(
                        'Honey lime combo', '  ₦ 2,000', 'assets/fruits2.png'),
                    const SizedBox(width: 12),
                    ComboCard(
                        'Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
                    ComboCard(
                        'Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
                    ComboCard(
                        'Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const TabBar(
                tabs: [
                  Tab(text: 'Hottest'),
                  Tab(text: 'Popular'),
                  Tab(text: 'New combo'),
                  Tab(text: 'Top'),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    Center(child: Text('Hottest Content')),
                    Center(child: Text('Popular Content')),
                    Center(child: Text('New Combo Content')),
                    Center(child: Text('Top Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HottestTab extends StatelessWidget {
  const HottestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: const [
          SaladCard('Quinoa fruit salad', '₦ 10,000', 'assets/fruits2.png'),
          SaladCard('Tropical fruit salad', '₦ 10,000', 'assets/fruits.png'),
          SaladCard('Melon salad', '₦ 8,000', 'assets/fruits2.png'),
          SaladCard('Tropical fruit salad', '₦ 10,000', 'assets/fruits.png'),
          SaladCard('Melon salad', '₦ 8,000', 'assets/fruits2.png'),
        ],
      ),
    );
  }
}

class SaladCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const SaladCard(this.title, this.price, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath,
              height: 100, width: double.infinity, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(price, style: const TextStyle(color: Colors.orange)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: ElevatedButton(
              onPressed: () {
                // Handle add to basket action
              },
              child: const Text('Add'),
            ),
          ),
        ],
      ),
    );
  }
}
