import 'package:banksa/shared/theme.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Akun Berhasil \nTerdaftar',
              textAlign: TextAlign.center,
              style:
                  blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 26,
            ),
            Text(
              'Grow your finance start \ntogether with us',
              textAlign: TextAlign.center,
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 96),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(56), color: purpleColor),
              width: double.infinity,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                },
                child: Text(
                  'Get Started',
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: semiBold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
