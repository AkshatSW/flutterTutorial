import 'package:flutter/material.dart';

class BGIMG extends StatelessWidget {
  const BGIMG({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/bg.jpeg",
      fit: BoxFit.cover, //basically kaise fit hogi image uske liye  hai ye
      // width: 100,
      // height: 100,
    );
  }
}
