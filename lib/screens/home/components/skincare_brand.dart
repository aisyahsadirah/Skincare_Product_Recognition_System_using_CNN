import 'package:flutter/material.dart';
import 'package:holaskin/screens/details/hadalabo.dart';
import 'package:holaskin/screens/details/nutox.dart';
import 'package:holaskin/screens/details/simple.dart';

import '../../../constants.dart';

class SkincareBrand extends StatelessWidget {
  const SkincareBrand({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SkincareBrandCard(
            image: "assets/images/brand_1.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandNutox(),
                ),
              );
            },
          ),
          SkincareBrandCard(
            image: "assets/images/brand_2.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandHadaLabo(),
                ),
              );
            },
          ),
          SkincareBrandCard(
            image: "assets/images/brand_3.png",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BrandSimple(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SkincareBrandCard extends StatelessWidget {
  const SkincareBrandCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding / 2,
          top: kDefaultPadding / 5,
          bottom: kDefaultPadding,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
