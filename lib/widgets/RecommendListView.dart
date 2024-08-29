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
          ComboCard(
              'Honey lime combo', '  ₦ 2,000', 'assets/Honey_lime_combo.png'),
          const VerticalDivider(
            width: 35,
          ),
          ComboCard(
              'Berry mango combo', '  ₦ 8,000', 'assets/Berry_mango_combo.png'),
        ],
      ),
    );
  }
}
