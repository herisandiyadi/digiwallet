import 'package:banksa/shared/theme.dart';
import 'package:banksa/ui/pages/register/upload_ktp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadPicPage extends StatelessWidget {
  const UploadPicPage({super.key});

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
              'Join Us to Unlock \nYour Growth',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 52,
          ),
          Center(
            child: Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: softGreyColor),
              child: Padding(
                padding: const EdgeInsets.all(44.0),
                child: Image.asset('assets/icons/ic_upload.png'),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Center(
            child: Text(
              'Muhammad Yahya Alkhawarizmi',
              style: blackTextStyle.copyWith(fontSize: 18, fontWeight: medium),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 46),
            child: Column(
              children: [
                Text(
                  'Set PIN (6 digit number)',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  maxLength: 6,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
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
                borderRadius: BorderRadius.circular(56), color: purpleColor),
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/upload-ktp', (route) => false);
              },
              child: Text(
                'Continue',
                style:
                    whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
