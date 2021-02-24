import 'package:flutter/material.dart';
import 'package:holaskin/constants.dart';

class DetailsScreenSC extends StatelessWidget {
  const DetailsScreenSC({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          hero(),
          titleProduct(),
          divider(),
          titleDescription(),
          description,
          divider(),
          titleConcerns(),
          divider(),
          titleIngredients(),
          divider(),
          ingredients(),
        ])));
  }
}

AppBar buildAppBar() {
  return AppBar(
    title: Text(
      'Product Description',
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

Widget divider() {
  return Container(
    color: Colors.white,
    child: Column(
      children: <Widget>[
        Divider(
          color: Color(0xFFBFBCBC).withOpacity(0.23),
          //height: 20,
          thickness: 1,
          indent: 0,
          endIndent: 0,
        ),
      ],
    ),
  );
}

Widget hero() {
  return Container(
      child: Stack(
    children: <Widget>[
      Image.asset(
        "assets/images/product_2.png",
      ), //This
      // should be a paged
      // view.
      //Positioned(child: appBar(),top: 0,),
      Positioned(
        child: FloatingActionButton(
            elevation: 2,
            child: Icon(
              Icons.favorite_outlined,
              color: Colors.pinkAccent,
              size: 30.0,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              //color: Colors.pink,
            }),
        bottom: 20,
        right: 20,
      ),
    ],
  ));
}

Widget titleProduct() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              "assets/images/icon_brand_2.png",
              height: 36,
            ),
            Text(
              "Refreshing Facial Cleanser",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E),
                height: 2.0,
              ),
            ),
            Text(
              "Cleanser",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Color(0xFF2F2F3E).withOpacity(0.3),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget titleDescription() {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.all(16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Description",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2F2F3E),
                height: 2.0,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

var description = Container(
  color: Colors.white,
  padding: EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 16,
  ),
  child: Text(
    "Simple Refreshing Facial Wash thoughrouly washes away make-up, dirt and other impurities leaving your skin feeling clean, fresh and revived. Help replenish and nourish your skin witouth irritation. Perfect for even sensitive skin. ",
    textAlign: TextAlign.justify,
    style: TextStyle(
      height: 1.5,
    ),
  ),
);

Widget titleConcerns() {
  return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Concerns",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E),
                    height: 2.0,
                  ),
                ),
              ],
            ),
            Column(children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/soothing.png",
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF9F8FD),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23),
                          ),
                        ],
                      ),
                      //width: 60,
                      //height: 60,
                      margin: EdgeInsets.all(5),
                      child: const Text('Soothing'),
                    ),
                    Image.asset(
                      "assets/images/anti-aging.png",
                      height: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF9F8FD),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kPrimaryColor.withOpacity(0.23),
                          ),
                        ],
                      ),
                      //width: 60,
                      //height: 60,
                      margin: EdgeInsets.all(5),
                      child: const Text('Anti-Aging'),
                    ),
                  ],
                ),
              )
            ])
          ]));
}

Widget titleIngredients() {
  return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Ingredients",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2F2F3E),
                    height: 2.0,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
            ),
            Text(
              "Product ingredients is based on EWG Rating denoted by colors as shown below: ",
              textAlign: TextAlign.justify,
              style: TextStyle(
                height: 1.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: 16,
              ),
            ),
            Column(children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF29A45D),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.all(4),
                      child: const Text('1-2',
                          style: TextStyle(
                            color: Colors.white,
                            height: 2.3,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Text(
                      "Safe  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFFA022),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.all(4),
                      child: const Text('3-6',
                          style: TextStyle(
                            color: Colors.white,
                            height: 2.3,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Text(
                      "Moderate  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFE44133),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.all(4),
                      child: const Text('7-10',
                          style: TextStyle(
                            color: Colors.white,
                            height: 2.3,
                          ),
                          textAlign: TextAlign.center),
                    ),
                    Text(
                      "Hazard  ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ]));
}

Widget ingredients() {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "INGREDIENT NAME",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                  fontFamily: 'Heebo',
                  fontSize: 16,
                  //height: 6.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Water",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Cocamidopropyl Betaine",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Propylene Glycol",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Hydroxypropyl Methylcellulose",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Panthenol",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Disodium EDTA",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Sodium Hydroxymethylglycinate",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Sodium Hydroxide",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Pantolactone",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Tocopheryl Acetate",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "EWG",
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.black,
                  fontFamily: 'Heebo',
                  fontSize: 16,
                  //height: 4.0,
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                          //height: 1.5,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF29A45D),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),
                    ),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFA022), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('1',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color(0xFF29A45D), 
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(15),
                        ),),
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(8),
                    child: const Text('2',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
