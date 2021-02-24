import 'package:flutter/material.dart';
import 'package:holaskin/constants.dart';

class DetailsScreenNCO extends StatelessWidget {
  const DetailsScreenNCO({
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
        "assets/images/product_3.png",
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
              "assets/images/icon_brand_3.png",
              height: 36,
            ),
            Text(
              "Cleansing Oil",
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
    "Nutox 3-in-1 Cleansing Oil dissolves waterproof makeup and pore clogging impurities instantly without drying out your skin. Formulated with sweet almond oil, it cleanses and refreshes skin, while bird’s nest extract protects skin from signs of ageing. ",
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
                      "assets/images/hyper-pigmentation.png",
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
                      child: const Text('Hyper-Pigmentation'),
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
                    Image.asset(
                      "assets/images/whitening.png",
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
                      child: const Text('Whitening'),
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
                    "Diglycerin",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Glycerin",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Tranexamic Acid",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Butylene Glycol",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "PEG-8",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "PEG-6",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "PEG-32",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "PPG-24-Glycereth-24",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Methylparaben",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Carbomer",
                    style: TextStyle(
                        height: 2.5, color: Colors.black.withOpacity(0.50)),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    "Polysorbate 20",
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
                ],
              )
            ],
          )
        ],
      ),
    );
  }
