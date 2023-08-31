import 'package:firebase_auth/firebase_auth.dart';
import 'package:pinput/pinput.dart';

class AuthenticationRepository {
  const AuthenticationRepository({
    required this.auth,
  });

  final FirebaseAuth auth;

  Future<void> sendOTP({
    required String phoneNumber,
  }) async {
    await auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (credential) {
        auth.signInWithCredential(credential);
      },
      verificationFailed: (exception) {},
      codeSent: (verificationId, _) {},
      codeAutoRetrievalTimeout: (verificationId) {},
    );
  }
}
