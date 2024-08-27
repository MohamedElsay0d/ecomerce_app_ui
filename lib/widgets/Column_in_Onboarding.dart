import 'package:flutter/material.dart';

import 'CustomButton.dart';

class ColumnOnboarding extends StatelessWidget {
  const ColumnOnboarding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 60),
        const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Get the Freshest Fruit Salad Combo',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'We deliver the best and freshest fruits straight to your door. Order for a instant healthy!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
        ),
        const SizedBox(height: 30),
        CustomButton(
          buttonText: 'Let\'s Continue',
          onPressed: () {
            Navigator.pushNamed(context, 'Authenticationscreen');
          },
        ),
        const SizedBox(height: 120),
      ],
    );
  }
}
