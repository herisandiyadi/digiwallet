import 'package:banksa/shared/theme.dart';
import 'package:banksa/ui/pages/register/upload_pic.dart';
import 'package:banksa/ui/pages/signin_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 110,
            ),
            child: Image.asset(
              'assets/images/logo-4-light.png',
              height: 50,
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Join Us to Unlock \nYour Growth',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            width: 327,
            height: 378,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        label: Text(
                          'Full Name',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        hintText: 'Input your fullname',
                        hintStyle: const TextStyle(color: softGreyColor)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        label: Text(
                          'Email Address',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        hintText: 'Input your email address',
                        hintStyle: const TextStyle(color: softGreyColor)),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        label: Text(
                          'Password',
                          style: blackTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        ),
                        hintText: 'Input your password',
                        isDense: true,
                        hintStyle: const TextStyle(color: softGreyColor)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 22),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(56),
                      color: purpleColor),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/upload-pic', (route) => false);
                    },
                    child: Text(
                      'Continue',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/sign-in', (route) => false);
            },
            child: Text(
              'Sign In',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
          ),
        ],
      ),
    );
  }
}
