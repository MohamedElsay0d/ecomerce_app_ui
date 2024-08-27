import 'package:flutter/material.dart';

class WidgetContainImage extends StatelessWidget {
  const WidgetContainImage({
    super.key,
    required this.image,
    required this.button_image,
    required this.child,
  });

  final String image;
  final String button_image;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: const Color(0xFFFFB347),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 35.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(bottom: 25.0, left: 28, right: 28),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
              Positioned(
                bottom: 0,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
