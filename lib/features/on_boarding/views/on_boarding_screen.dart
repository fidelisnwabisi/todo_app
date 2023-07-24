// OnBoardingScreen
// Image
// Title
// Skip
// Swipe Inicator

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:todo_app/core/common/widgets/fading_text.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/res/colours.dart';
import 'package:todo_app/core/res/image_res.dart';
import 'package:todo_app/features/on_boarding/views/widgets/second_page.dart';

import 'widgets/first_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.darkBackground,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: pageController,
              children: const [FirstPage(), SecondPage()],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10)
                  .copyWith(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      pageController.nextPage(
                          duration: const Duration(microseconds: 300),
                          curve: Curves.bounceInOut);
                    },
                    child: const Row(
                      children: [
                        // Button
                        Icon(
                          Ionicons.chevron_forward_circle,
                          size: 30,
                          color: Colours.light,
                        ),
                        WhiteSpace(
                          width: 5,
                        ),
                        // Skip
                        FadingText(
                          text: 'Skip',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: pageController,
                    count: 2,
                    effect: WormEffect(
                      dotHeight: 12,
                      spacing: 10,
                      dotColor: Colours.yellow.withOpacity(0.5),
                      activeDotColor: Colours.light,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
