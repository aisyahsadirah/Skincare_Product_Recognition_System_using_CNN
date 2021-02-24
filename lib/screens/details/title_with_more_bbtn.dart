import 'package:flutter/material.dart';

//import '../../../../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0/ 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: 20.0 / 4),
              height: 7,
              color: Color(0xFFBFBCBC).withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
