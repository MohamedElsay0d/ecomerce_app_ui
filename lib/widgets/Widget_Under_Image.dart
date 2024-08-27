import 'package:flutter/material.dart';

class WidgetUnderImage extends StatelessWidget {
  const WidgetUnderImage({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white,
      child: child,
    );
  }
}
