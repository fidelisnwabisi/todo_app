import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/common/widgets/round_button.dart';
import 'package:todo_app/core/common/widgets/white_space.dart';
import 'package:todo_app/core/res/colours.dart';
import 'package:todo_app/core/res/image_res.dart';
import 'package:todo_app/features/authentication/controller/authentication_controller.dart';
import 'package:todo_app/features/authentication/repository/authentication_repository.dart';
import 'package:todo_app/features/authentication/views/otp_verification_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(16),
    );
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            physics: const PageScrollPhysics(),
            shrinkWrap: true,
            children: [
              Image.asset(ImageRes.todo),
              const WhiteSpace(height: 20),
              Text(
                "Please enter your number to get the verification code",
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  fontSize: 17,
                  color: Colours.light,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const WhiteSpace(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    color: Colours.darkBackground,
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colours.light,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 5,
                  ),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
              ),
              const WhiteSpace(height: 30),
              RoundButton(
                text: 'Send Code',
                onPressed: () {
                  AuthenticationController(
                    AuthenticationRepository(
                      auth: FirebaseAuth.instance,
                    ),
                  ).sendOTP(context: context, phoneNumber: "phoneNumber");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
