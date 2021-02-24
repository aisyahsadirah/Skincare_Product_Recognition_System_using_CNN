import 'package:flutter/material.dart';
import 'package:holaskin/screens/details/cleanser.dart';
import 'package:holaskin/screens/details/mask.dart';
import 'package:holaskin/screens/details/moisturizer.dart';
import 'package:holaskin/screens/details/serum.dart';
import 'package:holaskin/screens/details/sunscreen.dart';
import 'package:holaskin/screens/details/toner.dart';

import '../../../constants.dart';

class SkincareCategory extends StatelessWidget {
  const SkincareCategory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SkincareCategoryCard(
            title: "Cleanser",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CleanserCat(),
                ),
              );
            },
          ),
          SkincareCategoryCard(
            title: "Moisturizer",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MoisturizerCat(),
                ),
              );
            },
          ),
          SkincareCategoryCard(
            title: "Toner",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TonerCat(),
                ),
              );
            },
          ),
          SkincareCategoryCard(
            title: "Serum",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SerumCat(),
                ),
              );
            },
          ),
          SkincareCategoryCard(
            title: "Sunscreen",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SunscreenCat(),
                ),
              );
            },
          ),
          SkincareCategoryCard(
            title: "Mask",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MaskCat(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SkincareCategoryCard extends StatelessWidget {
  const SkincareCategoryCard({
    Key key,
    this.title,
    this.press,
  }) : super(key: key);

  final String title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding / 2,
        top: kDefaultPadding / 5,
        bottom: kDefaultPadding,
      ),
      width: size.width * 0.3,
      //height: size.height * 0.2,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kBackgroundColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "\n$title\n",
                            style: TextStyle(
                                fontSize: 12,
                                height: 0.8,
                                color: Colors.black,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
