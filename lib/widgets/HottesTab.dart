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
          children: const [
            ComboCard('Quinoa fruit salad', '  ₦ 8,000',
                'assets/Quinoa_fruit_salad.png'),
            ComboCard('Tropical fruit salad', '  ₦ 8,000',
                'assets/Tropical_fruit_salad.png'),
            ComboCard('melon fruit salad', '  ₦ 8,000',
                'assets/melon_fruit_salad.png'),
          ],
        ));
  }
}
