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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(ImageRes.todo),
              const WhiteSpace(height: 26),
              Pinput(
                length: 6,
                keyboardType: TextInputType.number,
                onCompleted: (pin) {
                  // TODO(Verify-OTP): Send OTP to firebase for verification
                },
                defaultPinTheme: PinTheme(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: Colours.light,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
