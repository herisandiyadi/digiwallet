import 'package:banksa/shared/theme.dart';
import 'package:banksa/ui/pages/register/signup_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgColor,
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
              'Sign In & \nGrow Your Finance',
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
            height: 317,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: const EdgeInsets.all(12),
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
                  padding: const EdgeInsets.all(22.0),
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
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 22),
                  child: Row(
                    children: [
                      const Spacer(),
                      Text(
                        'Forgot Password',
                        style: blueTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
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
                          context, '/home', (route) => false);
                    },
                    child: Text(
                      'Sign In',
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
                  context, '/signin', (route) => false);
            },
            child: Text(
              'Create New Account',
              style: greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
            ),
          ),
        ],
      ),
    );
  }
}
