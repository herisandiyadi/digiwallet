import 'package:banksa/shared/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(left: 24, right: 24, top: 42, bottom: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy,',
                  style:
                      greyTextStyle.copyWith(fontSize: 16, fontWeight: regular),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Yahya',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/woman.png'),
                ),
              ),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: whiteColor),
                  child: const Center(
                    child: Icon(
                      Icons.check_circle,
                      color: greenColor,
                      size: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget card() {
      return Container(
        margin: const EdgeInsets.only(left: 24, right: 24, bottom: 20),
        height: 220,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/card.png'),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yahya Al Khawarizmi',
                style:
                    whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
              ),
              const SizedBox(
                height: 28,
              ),
              Text(
                '**** **** **** 1280',
                style: whiteTextStyle.copyWith(
                    fontSize: 18, fontWeight: medium, letterSpacing: 5),
              ),
              const SizedBox(
                height: 21,
              ),
              Text(
                'Balance',
                style: whiteTextStyle.copyWith(fontSize: 14),
              ),
              Text(
                'Rp. 12.500',
                style:
                    whiteTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
              ),
            ],
          ),
        ),
      );
    }

    Widget level() {
      return Container(
        margin: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
            color: whiteColor, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Level 1',
                      style: blackTextStyle.copyWith(fontSize: 14),
                    ),
                  ),
                  Text(
                    '55% ',
                    style: greenTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                  Text(
                    'of Rp 20.000',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: semiBold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(55),
                child: const LinearProgressIndicator(
                  value: 0.55,
                  minHeight: 5,
                  valueColor: AlwaysStoppedAnimation(greenColor),
                  backgroundColor: lightbgColor,
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget menu() {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do Something',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 70,
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 26,
                          child: Image.asset('assets/icons/fi_download.png')),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Top Up',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 70,
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 26,
                          child: Image.asset('assets/icons/ic_repeat.png')),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Send',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 70,
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 26,
                          child: Image.asset('assets/icons/fi_upload.png')),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Withdraw',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  width: 70,
                  color: whiteColor,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 26,
                          child: Image.asset('assets/icons/fi_grid.png')),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'More',
                        style: blackTextStyle.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget latestTransac() {
      return Container(
        margin: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latest Transactions',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 36,
            ),
            Container(
              height: 375,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE7F5FD),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/icons/fi_down.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Top Up',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Yesterday',
                              style: greyTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '+ 450.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF5E8F9),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/icons/ic_gift.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cashback',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Sep 11',
                              style: greyTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '+ 22.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFE5F7EE),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/icons/fi_upload.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Withdraw',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Sep 2',
                              style: greyTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '- 5.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFEEDEBFF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/icons/ic_repeat.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Transfer',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Aug 27',
                              style: greyTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '- 123.500',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFFEF0DF),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/icons/fi_shopping-cart.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Electric',
                              style: blackTextStyle.copyWith(
                                  fontSize: 16, fontWeight: medium),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Feb 18',
                              style: greyTextStyle.copyWith(
                                  fontSize: 12, fontWeight: regular),
                            )
                          ],
                        ),
                        const Spacer(),
                        Text(
                          '- 12.300.500',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget sendAgain() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Send Again',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                height: 135,
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/woman.png'))),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text('@yuanita'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/woman2.png'))),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text('@jani'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/man1.png'))),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text('@urip'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 120,
                      width: 90,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 45,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/man2.png'))),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          const Text('@masa'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget friendlyTips() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
          bottom: 50,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Friendly Tips',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            const SizedBox(
              height: 14,
            ),
            Wrap(
              spacing: 17,
              runSpacing: 18,
              children: [
                Container(
                  width: 140,
                  height: 176,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/tips1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Best tips for using \na credit card',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 176,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/tips2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Spot the good pie \nof finance model',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 176,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/tips3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Great hack to get \nbetter advices',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 140,
                  height: 176,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Image.asset(
                          'assets/images/tips4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Save more penny \nbuy this instead',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: lightbgColor,
      body: ListView(
        children: [
          header(),
          card(),
          level(),
          menu(),
          latestTransac(),
          sendAgain(),
          friendlyTips(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle:
              blueTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          unselectedLabelStyle:
              blackTextStyle.copyWith(fontSize: 10, fontWeight: medium),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/history.png',
                  width: 20,
                ),
                label: 'History'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/statistic.png',
                  width: 20,
                ),
                label: 'Statistic'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/icons/reward.png',
                  width: 20,
                ),
                label: 'Reward'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: purpleColor,
        onPressed: () {},
        child: Image.asset(
          'assets/icons/ic_plus-circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
