import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/res/colours.dart';
import 'package:todo_app/core/res/image_res.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Image.asset(ImageRes.todo),
              const WhiteSpace(height: 26),
              Pinput(
                length: 6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
