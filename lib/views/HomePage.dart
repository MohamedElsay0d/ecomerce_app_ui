import 'package:flutter/material.dart';
import '../widgets/homepageContent.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.name});

  final String name;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
              icon: const Icon(Icons.shopping_cart, color: Colors.orange),
              onPressed: () {
                // Handle cart button press
              },
            ),
          ],
        ),
        body: HomepageContent(name: name),
      ),
    );
  }
}
