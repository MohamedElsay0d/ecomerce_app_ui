import 'package:flutter/material.dart';

import '../widgets/ColumnAuth.dart';
import '../widgets/Widget_Under_Image.dart';
import '../widgets/widget_contain_image.dart';

class Authenticationscreen extends StatelessWidget {
  const Authenticationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WidgetContainImage(
            image: 'assets/fruits2.png',
            button_image: 'assets/button.png',
            child: Image.asset('assets/button.png', width: 250),
          ),
          const WidgetUnderImage(
            child: ColumnAuth(),
          ),
        ],
      ),
    );
  }
}
