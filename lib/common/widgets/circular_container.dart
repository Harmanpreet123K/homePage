import 'package:flutter/material.dart';

class PCircularContainer extends StatelessWidget {
  const PCircularContainer({super.key, required this.backgoundColor});

  final Color backgoundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgoundColor,
      ),
    );
  }
}