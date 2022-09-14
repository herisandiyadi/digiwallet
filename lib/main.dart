import 'package:banksa/ui/pages/home/home_page.dart';
import 'package:banksa/ui/pages/onboarding_page.dart';
import 'package:banksa/ui/pages/register/signup_page.dart';
import 'package:banksa/ui/pages/register/success_page.dart';
import 'package:banksa/ui/pages/register/upload_ktp_page.dart';
import 'package:banksa/ui/pages/register/upload_pic.dart';
import 'package:banksa/ui/pages/signin_page.dart';
import 'package:banksa/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/signup': (context) => const SignupPage(),
        '/signin': (context) => const SignInPage(),
        '/upload-pic': (context) => const UploadPicPage(),
        '/upload-ktp': (context) => const UploadKtpPage(),
        '/success-page': (context) => const SuccessPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
