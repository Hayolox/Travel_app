import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';
import 'package:travel_app/widgets/Cities.dart';
import 'package:travel_app/widgets/OurProperties.dart';
import 'package:travel_app/widgets/popular_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        top: 26,
        left: 41,
        right: 41,
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(
                    image: AssetImage('assets/profile_foto.png'))),
          ),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Text(
              'Hello, Niara!',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Container(
            width: 39,
            height: 39,
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 9,
            ),
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(
                  17,
                )),
            child: GestureDetector(
              child: Image.asset('assets/lonceng.png'),
            ),
          )
        ],
      ),
    );
  }

  Widget TitleFyt() {
    return Container(
      margin: EdgeInsets.only(
        top: 27,
        left: 41,
        right: 41,
      ),
      child: Text(
        'Find Your Stay',
        style: blackTextStyle.copyWith(
          fontSize: 24,
        ),
      ),
    );
  }

  Widget Search() {
    return Container(
      margin: EdgeInsets.only(
        left: 41,
        right: 41,
        top: 8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 43.05,
              width: 260,
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(
                    10,
                  )),
              child: Row(
                children: [
                  Expanded(
                      child: TextFormField(
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Search here...',
                      hintStyle: grayTextStyle,
                    ),
                  )),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/search1.png',
                      width: 11.67,
                      height: 11.66,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 19),
            width: 44.53,
            height: 42.68,
            padding: EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 14,
            ),
            decoration: BoxDecoration(
              color: orange,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/filter.png',
              width: 19.26,
              height: 13.49,
            ),
          )
        ],
      ),
    );
  }

  Widget Cities() {
    return Container(
      margin: EdgeInsets.only(
        left: 43,
        right: 41,
        top: 24,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            City(),
            City(),
            City(),
            City(),
          ],
        ),
      ),
    );
  }

  Widget OurPropertiesTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 36.66,
        right: 40.66,
        top: 30,
      ),
      width: 320,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Our Properties',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          Text(
            'View All',
            style: orangeTextStyle.copyWith(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  Widget OurProperties() {
    return Container(
      margin: EdgeInsets.only(
        left: 27,
        right: 27,
        top: 15,
      ),
      // ignore: sized_box_for_whitespace
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            OurPropertiesContent(),
            OurPropertiesContent(),
            OurPropertiesContent(),
          ],
        ),
      ),
    );
  }

  Widget PopularTitle() {
    return Container(
      margin: EdgeInsets.only(
        left: 36.66,
        right: 40.66,
        top: 26,
      ),
      width: 320,
      child: Row(
        children: [
          Expanded(
            child: Text(
              'Our Properties',
              style: blackTextStyle.copyWith(
                fontSize: 24,
              ),
            ),
          ),
          Text(
            'View All',
            style: orangeTextStyle.copyWith(
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }

  Widget Popular() {
    return Container(
      margin: EdgeInsets.only(
        left: 26.98,
        top: 18.77,
        bottom: 32.33,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            PopularContent(),
            PopularContent(),
            PopularContent(),
            PopularContent(),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          header(),
          Expanded(
            child: ListView(
              children: [
                TitleFyt(),
                Search(),
                Cities(),
                OurPropertiesTitle(),
                OurProperties(),
                PopularTitle(),
                Popular(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
