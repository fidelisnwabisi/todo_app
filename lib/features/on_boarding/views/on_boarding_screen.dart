// OnBoardingScreen
// Image
// Title
// Skip
// Swipe Inicator

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/widgets/fading_text.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/res/colours.dart';
import 'package:todo_app/core/res/image_res.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.darkBackground,
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30).copyWith(bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset(ImageRes.todo),
              const WhiteSpace(height: 100),
              const FadingText(
                text: "ToDo with Riverpod",
                fontSize: 30,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              const WhiteSpace(height: 10),
              Text(
                "Welcome!!! Do you want to clear tasks super fast with ToDo",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colours.lightGrey,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Button
                      IconButton(
                          iconSize: 30,
                          color: Colours.light,
                          onPressed: () {},
                          icon: const Icon(
                            Ionicons.chevron_forward_circle,
                          )),
                      // Skip
                      const FadingText(
                        text: 'Skip',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      )
                    ],
                  ),

                  // Swipe Indicator
                  const Placeholder(fallbackHeight: 20, fallbackWidth: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
