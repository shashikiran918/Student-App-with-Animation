import 'package:flutter/material.dart';


class CustomGradientBackground extends StatelessWidget {
  final Widget child;
  const CustomGradientBackground({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:  [
            Color(0xff8b8bc1),
            Color(0xff41415f),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
