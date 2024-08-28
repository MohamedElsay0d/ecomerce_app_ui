import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {
              // Handle menu button press
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {
                // Handle cart button press
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              const Text(
                'Hello Tony, What fruit salad combo do you want today?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(0, 0, 0, 7)),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search for fruit salad combos',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.search),
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
                height: 16,
              ),
              ListView(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
              )
            ],
          ),
        ));
  }
}
