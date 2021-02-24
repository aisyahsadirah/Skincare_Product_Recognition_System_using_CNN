import 'package:flutter/material.dart';
import 'package:holaskin/screens/details/details_screenHLM.dart';
import 'package:holaskin/screens/details/details_screenHLT.dart';
import 'package:holaskin/screens/details/details_screenNS.dart';
import 'package:holaskin/screens/details/details_screenSC.dart';
import 'package:holaskin/screens/details/details_screenNCO.dart';
import 'package:holaskin/screens/details/details_screenSM.dart';

import '../../../constants.dart';

class SkincareProduct extends StatelessWidget {
  const SkincareProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          SkincareProductCard(
            image: "assets/images/product_4.png",
            title: "Hada Labo",
            country: "Moisturizer",
            price: 45,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenHLM(),
                ),
              );
            },
          ),
          SkincareProductCard(
            image: "assets/images/product_1.png",
            title: "Hada Labo",
            country: "Hydrating Toner",
            price: 45,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenHLT(),
                ),
              );
            },
          ),
          SkincareProductCard(
            image: "assets/images/product_2.png",
            title: "Simple",
            country: "Facial Cleanser",
            price: 27,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenSC(),
                ),
              );
            },
          ),
          SkincareProductCard(
            image: "assets/images/product_6.png",
            title: "Simple",
            country: "Moisturizer",
            price: 45,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenSM(),
                ),
              );
            },
          ),
          SkincareProductCard(
            image: "assets/images/product_3.png",
            title: "Nutox",
            country: "Cleansing Oil",
            price: 36,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenNCO(),
                ),
              );
            },
          ),
          SkincareProductCard(
            image: "assets/images/product_5.png",
            title: "Nutox",
            country: "Serum",
            price: 45,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreenNS(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SkincareProductCard extends StatelessWidget {
  const SkincareProductCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
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
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n",
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$country",
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.30),
                            height: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
