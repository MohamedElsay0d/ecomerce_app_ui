import 'package:flutter/material.dart';

import 'ComboCard.dart';

class HottestTab extends StatelessWidget {
  const HottestTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(6.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits2.png'),
            ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
            ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits2.png'),
            ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
          ],
        ));
  }
}
