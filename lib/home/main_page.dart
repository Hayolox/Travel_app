import 'package:flutter/material.dart';
import 'package:travel_app/home/home_page.dart';
import 'package:travel_app/home/lonceng_page.dart';
import 'package:travel_app/home/profile_page.dart';
import 'package:travel_app/home/sukai_page.dart';
import 'package:travel_app/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {
  int currentIndex = 0;

  Widget bottomNavigationBar() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        backgroundColor: white,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 29,
                bottom: 38,
              ),
              child: Image.asset(
                'assets/home.png',
                width: 22,
                height: 24,
                color: currentIndex == 0 ? orange : orangeLow,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 29,
                bottom: 38,
              ),
              child: Image.asset(
                'assets/lonceng.png',
                width: 21,
                height: 22,
                color: currentIndex == 1 ? orange : orangeLow,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 29,
                bottom: 38,
              ),
              child: Image.asset(
                'assets/sukai.png',
                width: 18,
                height: 22,
                color: currentIndex == 2 ? orange : orangeLow,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              margin: const EdgeInsets.only(
                top: 29,
                bottom: 38,
              ),
              child: Image.asset(
                'assets/profile.png',
                width: 23,
                height: 22,
                color: currentIndex == 3 ? orange : orangeLow,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }

  List body = [
    const HomePage(),
    const LoncengPage(),
    const SukaiPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backroundColor,
      bottomNavigationBar: bottomNavigationBar(),
      body: body[currentIndex],
    );
  }
}
