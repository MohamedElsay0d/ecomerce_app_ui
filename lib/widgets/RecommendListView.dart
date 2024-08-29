import 'package:flutter/material.dart';

import 'ComboCard.dart';

class RecommendListview extends StatelessWidget {
  const RecommendListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ComboCard('Honey lime combo', '  ₦ 2,000', 'assets/fruits2.png'),
          const SizedBox(width: 12),
          ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
          ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
          ComboCard('Berry mango combo', '  ₦ 8,000', 'assets/fruits.png'),
        ],
      ),
    );
  }
}
