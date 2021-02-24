import 'dart:io';
import 'package:tflite/tflite.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:holaskin/constants.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holaskin/screens/home/components/body.dart';
import 'package:holaskin/screens/details/details_screenHLM.dart';
import 'package:holaskin/screens/details/details_screenHLT.dart';
import 'package:holaskin/screens/details/details_screenNCO.dart';
import 'package:holaskin/screens/details/details_screenNS.dart';
import 'package:holaskin/screens/details/details_screenSC.dart';
import 'package:holaskin/screens/details/details_screenSM.dart';

class HomePage extends StatefulWidget {
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<HomePage> {
  File _image;
  // ignore: unused_field
  bool _loading;
  List _output;
  final picker = ImagePicker();

  void initState() {
    super.initState();
    _loading = true;

    loadModel().then((value) {
      setState(() {
        _loading = false;
      });
    });
  }

  loadModel() async {
    await Tflite.loadModel(
      model: "assets/model.tflite",
      labels: "assets/labels.txt",
      numThreads: 1,
    );
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  selectFromCamera() async {
    var image = await picker.getImage(source: ImageSource.camera);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
      _loading = true;
    });
    print("This is the image");
    print(_image);
    predict(_image);
  }

  selectFromGallery() async {
    var image = await picker.getImage(source: ImageSource.gallery);
    if (image == null) return null;

    setState(() {
      _image = File(image.path);
      _loading = true;
    });
    print("This is the image");
    print(_image);
    predict(_image);
  }

  predict(File image) async {
    var output = await Tflite.runModelOnImage(
      path: image.path, // required
      imageMean: 0.0, // defaults to 117.0
      imageStd: 255.0, // defaults to 1.0
      numResults: 2, // defaults to 5
      threshold: 0.2, // defaults to 0.1
    );
    setState(() {
      _output = output;
      _loading = false;
      print("This is the image");
      print(_output);
    });
    if (_output[0]['label'] == 'hadalabo_moisturizer') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenHLM(),
        ),
      );
    } else if (_output[0]['label'] == 'hadalabo_toner') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenHLT(),
        ),
      );
    } else if (_output[0]['label'] == 'nutox_cleansingoil') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenNCO(),
        ),
      );
    } else if (_output[0]['label'] == 'nutox_serum') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenNS(),
        ),
      );
    } else if (_output[0]['label'] == 'simple_cleanser') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenSC(),
        ),
      );
    } else if (_output[0]['label'] == 'simple_moisturizer') {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreenSM(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _showBottomSheet(context) {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 130,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.camera_alt),
                    title: Text('Camera'),
                    onTap: selectFromCamera,
                  ),
                  ListTile(
                    leading: Icon(Icons.photo),
                    title: Text('Photo Library'),
                    onTap: selectFromGallery,
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
        appBar: buildAppBar(),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          onPressed: () {
            _showBottomSheet(context);
          },
          child: Icon(
            Icons.add_a_photo,
            color: Colors.black,
          ),
        ));
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }
}
