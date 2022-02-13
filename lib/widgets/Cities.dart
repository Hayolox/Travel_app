import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class City extends StatelessWidget {
  const City({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 33.52),
          width: 60.67,
          height: 60.67,
          decoration: BoxDecoration(
              color: gray,
              borderRadius: BorderRadius.circular(77.36),
              image: DecorationImage(
                image: AssetImage('assets/india.jpg'),
                fit: BoxFit.cover,
              )),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          margin: EdgeInsets.only(
            right: 35,
          ),
          child: Container(
            width: 40,
            child: Text(
              'India',
              maxLines: 2,
              textAlign: TextAlign.center,
              style: grayTextStyle.copyWith(
                fontSize: 13.26,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
