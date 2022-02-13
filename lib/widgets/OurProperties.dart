import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class OurPropertiesContent extends StatelessWidget {
  const OurPropertiesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 299,
      margin: EdgeInsets.only(
        right: 15,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 2,
        vertical: 2,
      ),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(
            26,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 290,
            height: 160.49,
            margin: EdgeInsets.only(
              top: 15,
              left: 15,
            ),
            decoration: BoxDecoration(
                color: gray,
                image: DecorationImage(
                  image: AssetImage('assets/Properties_Background.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                )),
          ),
          SizedBox(
            height: 13,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 23,
            ),
            child: Text(
              'Misty Rock Resort',
              style: blackTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 23,
                  top: 6,
                ),
                child: Image.asset('assets/location.png'),
              ),
              Container(
                margin: EdgeInsets.only(
                  left: 5,
                  top: 6,
                ),
                child: Text(
                  'Wayanad',
                  style: grayTextStyle.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                    left: 170,
                    top: 6,
                  ),
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.symmetric(),
                  decoration: BoxDecoration(
                    color: orange,
                    image: DecorationImage(
                      image: AssetImage('assets/Polygon.png'),
                    ),
                    borderRadius: BorderRadius.circular(6.53),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
