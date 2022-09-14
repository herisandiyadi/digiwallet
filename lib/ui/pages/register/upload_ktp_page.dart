import 'package:banksa/shared/theme.dart';
import 'package:banksa/ui/pages/register/success_page.dart';
import 'package:flutter/material.dart';

class UploadKtpPage extends StatelessWidget {
  const UploadKtpPage({super.key});

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
              'Verify Your \nAccount',
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
            margin: const EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22), color: whiteColor),
            child: Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                children: [
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
                      'Passport/ID Card',
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: medium),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
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
                            context, '/success-page', (route) => false);
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
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/home', (route) => false);
              },
              child: Text(
                'Skip for Now',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
