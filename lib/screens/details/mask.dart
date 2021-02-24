import 'package:flutter/material.dart';

class MaskCat extends StatelessWidget {
  const MaskCat({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          hero(),
        ])));
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      'Masks',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        color: Colors.black,
        fontFamily: 'Heebo',
        fontSize: 16,
        //height: 6.0,
      ),
    ),
    centerTitle: true,
    elevation: 0,
  );
}

Widget hero() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Image.asset(
        "assets/images/sorry.png",
        height: 330,
      )
    ],
  );
}
