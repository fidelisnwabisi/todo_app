// OnBoardingScreen
// Image
// Title
// Skip
// Swipe Inicator

import 'package:flutter/material.dart';
import 'package:todo_app/core/res/image_res';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(ImageRes.todo),
    );
  }
}
