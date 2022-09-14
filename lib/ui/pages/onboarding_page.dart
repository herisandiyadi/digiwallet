import 'package:banksa/shared/theme.dart';
import 'package:banksa/ui/pages/signin_page.dart';
import 'package:banksa/ui/pages/register/signup_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();
  List<String> titles = [
    'Grow Your \nFinancial Today',
    'Build From \nZero to Freedom',
    'Start Together'
  ];
  List<String> subtitle = [
    'Our system is helping you to \nachieve a better goal',
    'We provide tips for you so that \nyou can adapt easier',
    'We will guide you to where \nyou wanted it too'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightbgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/images/onboard1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/images/onboard2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/images/onboard3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                  height: 331,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    titles[currentIndex],
                    style: blackTextStyle.copyWith(
                        fontSize: 20, fontWeight: semiBold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Text(
                    subtitle[currentIndex],
                    style: greyTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: currentIndex == 2 ? 30 : 50,
                  ),
                  currentIndex == 2
                      ? Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(56),
                              child: Container(
                                height: 50,
                                width: double.infinity,
                                color: purpleColor,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.pushNamedAndRemoveUntil(
                                        context, '/signup', (route) => false);
                                  },
                                  child: Text(
                                    'Get Started',
                                    style: whiteTextStyle.copyWith(
                                        fontSize: 16, fontWeight: semiBold),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                    context, '/signin', (route) => false);
                              },
                              child: Text(
                                'Sign In',
                                style: greyTextStyle.copyWith(fontSize: 16),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 0
                                      ? blueColor
                                      : softGreyColor),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 1
                                      ? blueColor
                                      : softGreyColor),
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentIndex == 2
                                      ? blueColor
                                      : softGreyColor),
                            ),
                            const Spacer(),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(56),
                              child: Container(
                                height: 50,
                                width: 150,
                                color: purpleColor,
                                child: TextButton(
                                    onPressed: () {
                                      carouselController.nextPage();
                                    },
                                    child: Text(
                                      'Continue',
                                      style: whiteTextStyle.copyWith(
                                          fontSize: 16, fontWeight: semiBold),
                                    )),
                              ),
                            )
                          ],
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
