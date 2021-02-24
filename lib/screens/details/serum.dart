import 'package:flutter/material.dart';

class SerumCat extends StatelessWidget {
  const SerumCat({
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
      'Serums',
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
  return Column(
    children: <Widget>[
      Container(
        width: 600,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(9.0),
          ),
          child: Container(
            width: 100,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 55.0,
                      height: 55.0,
                      //color: Colors.green,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.black,
                        backgroundImage:
                            AssetImage('assets/images/product_5.png'),
                      ),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "  Nutox Advanced Serum",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2F2F3E),
                            height: 2.0,
                          ),
                        ),
                        Text(
                          "  Serum",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF2F2F3E).withOpacity(0.3),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
