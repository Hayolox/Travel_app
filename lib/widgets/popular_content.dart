import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class PopularContent extends StatelessWidget {
  const PopularContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.65,
      height: 119.39,
      margin: EdgeInsets.only(
        right: 14.35,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.46,
        vertical: 10.36,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: white,
      ),
      child: Row(
        children: [
          Container(
            width: 141.9,
            height: 93.7,
            decoration: BoxDecoration(
                color: gray,
                image: DecorationImage(
                  image: AssetImage('assets/Properties_Background.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 150,
                child: Text(
                  'Misty Rock Resort Resort',
                  style: blackTextStyle.copyWith(fontSize: 17),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    height: 5.71,
                  ),
                  Image.asset('assets/location.png'),
                  SizedBox(
                    width: 5.44,
                  ),
                  Text(
                    'Wayanad',
                    style: grayTextStyle,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
