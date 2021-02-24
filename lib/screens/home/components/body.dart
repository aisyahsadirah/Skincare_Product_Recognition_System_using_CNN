import 'package:flutter/material.dart';
import 'package:holaskin/constants.dart';

import 'skincare_brand.dart';
import 'header_with_seachbox.dart';
import 'skincare_product.dart';
import 'skincare_category.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Categories", press: () {}),
          SkincareCategory(),
          TitleWithMoreBtn(title: "Products", press: () {}),
          SkincareProduct(),
          TitleWithMoreBtn(title: "Brands", press: () {}),
          SkincareBrand(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
