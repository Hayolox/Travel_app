import 'package:flutter/material.dart';
import 'package:travel_app/home/main_page.dart';
import 'package:travel_app/theme.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  Widget background() {
    return Container(
      margin: const EdgeInsets.only(
        top: 50,
        left: 40,
      ),
      child: Image.asset(
        'assets/background.png',
        width: 250,
        height: 250,
      ),
    );
  }

  Widget titleBold() {
    return Container(
        margin: const EdgeInsets.only(left: 35, right: 40),
        child: Text(
          'Discover a Hotel & Resort to Book a Suitable Room',
          textAlign: TextAlign.center,
          style: blackTextStyle.copyWith(
            fontSize: 20,
          ),
        ));
  }

  Widget titleWhite() {
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 40),
      child: const Text(
        'The hotel and resort business is one of the best and loyal business in the global market. We are the agency that helps to book you a good room in a suitable palace at a reasonable price.',
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buttoNext(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 60, right: 50),
      width: 243,
      height: 53,
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 13,
      ),
      decoration:
          BoxDecoration(color: orange, borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) {
              return const MainPage();
            },
          ));
        },
        child: Row(
          children: [
            const SizedBox(
              width: 36,
            ),
            Expanded(
              child: Text(
                'Get Started',
                style: whiteTextStyle.copyWith(
                    fontSize: 22, fontStyle: FontStyle.italic),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              child: Image.asset('assets/Arrow.png'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backroundColor,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            background(),
            const SizedBox(
              height: 25,
            ),
            titleBold(),
            const SizedBox(
              height: 25,
            ),
            titleWhite(),
            const SizedBox(
              height: 85,
            ),
            buttoNext(context),
          ],
        )));
  }
}
