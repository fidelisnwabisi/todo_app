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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageRes.todo),
              const Text(
                "ToDo with Riverpod",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Text(
                "Welcome!!! Do you want to clear tasks super fast with ToDo",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
