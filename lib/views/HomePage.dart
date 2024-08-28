import 'package:flutter/material.dart';

import '../widgets/ComboCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          borderRadius: BorderRadius.all(Radius.circular(25))),
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
                      'Honey lime combo', '₦ 2,000', 'assets/fruits2.png'),
                  const SizedBox(width: 12),
                  ComboCard(
                      'Berry mango combo', '₦ 8,000', 'assets/fruits.png'),
                  ComboCard(
                      'Berry mango combo', '₦ 8,000', 'assets/fruits.png'),
                  ComboCard(
                      'Berry mango combo', '₦ 8,000', 'assets/fruits.png'),
                ],
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
