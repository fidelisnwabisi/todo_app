// OnBoardingScreen
// Image
// Title
// Skip
// Swipe Inicator

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
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
              const WhiteSpace(height: 100),
              Text(
                "ToDo with Riverpod",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const WhiteSpace(height: 10),
              Text("Welcome!!! Do you want to clear tasks super fast with ToDo",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.normal))
            ],
          ),
        ),
      ),
    );
  }
}
