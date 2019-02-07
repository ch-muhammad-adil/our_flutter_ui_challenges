import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'dart:async';
import 'package:my_flutter_ui_challenges/car_rental_screens/home_screen.dart';

import 'package:flutter/services.dart';

//void main() => runApp(MyApp());

//class CarRentalSignupScreen extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      debugShowCheckedModeBanner: false,
//      home: MyHomePage(title: ''),
//    );
//  }
//}

class CarRentalSignupScreen extends StatefulWidget {
  CarRentalSignupScreen({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CarRentalSignupScreen> {
  ui.Image profile;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
//        alignment: Alignment(0, 0),
      children: <Widget>[
        Image.asset("assets/wall.jpg"),
        Container(
            padding: EdgeInsets.fromLTRB(25, 50, 0, 0),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 28,
              ),
            )),
        Container(
            margin: EdgeInsets.only(
                left: 25, top: MediaQuery.of(context).size.height * 0.45),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "WELCOME",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Long time\tno see.",
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo[900].withOpacity(0.6),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomLeft: Radius.circular(15))),
                      height: 75,
                      width: MediaQuery.of(context).size.width * 0.73,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 12),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: ExactAssetImage(
                                            "assets/profile_2.jpg"))),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Continue as",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    "Vlad.Tyzun",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(Icons.arrow_forward_ios,
                                color: Colors.white, size: 15),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 2.5,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.indigo[900].withOpacity(0.6)),
                      height: 75,
                      width: MediaQuery.of(context).size.width -
                          ((MediaQuery.of(context).size.width * 0.73) +
                              25 +
                              2.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 12),
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image:
                                        ExactAssetImage("assets/profile.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
//                            margin: EdgeInsets.only(left: 9),
                              height: 25,
                              width: 25,
                              child: new CustomPaint(
                                foregroundPainter: new MyPainter(profile),
//                                  child: AspectRatio(
//                                    aspectRatio: 480/451,
//                                    child: Container(
//                                      margin: EdgeInsets.only(left: 10),
//                                        decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            image: DecorationImage(
//                                                image: ExactAssetImage(
//                                                    "assets/profile.jpg"),alignment: Alignment.center,
//                                                fit: BoxFit.cover))),
//                                  )
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                new Expanded(
                  child: new Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.blue,
                                    Colors.blue,
                                    Colors.blue,
                                    Colors.blue[300],
                                    Colors.blue[300]
                                  ])),
                          margin: EdgeInsets.only(right: 25, bottom: 15),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            textColor: Colors.white,
                            child: Text(
                              "Create Account",
                              style: TextStyle(fontWeight: FontWeight.w600),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          MyHomePageScreen()));
                            },
                          ),
                        ),
                        Container(
                            height: 45,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.indigo[900].withOpacity(0.6)),
                            margin: EdgeInsets.only(right: 25, bottom: 35),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Image.asset(
                                    "assets/facebook.png",
                                    color: Colors.indigo,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                        child: Container(
                                      child: Text(
                                        "Sign up with Facebook",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white),
                                      ),
                                    )),
                                  ],
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      print("you tapped signup with fb");
                                    });
                                  },
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ))
      ],
    ));
  }

  @override
  void initState() {
    super.initState();
    load('assets/profile.jpg').then((i) {
      setState(() {
        profile = i;
      });
    });
  }

  Future<ui.Image> load(String asset) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }
}

class MyPainter extends CustomPainter {
  ui.Image profile;

  MyPainter(this.profile);

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
      ..isAntiAlias = false
      ..color = Colors.blue
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    Paint complete = new Paint()
      ..isAntiAlias = false
      ..color = Colors.yellow
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;
    Offset center = new Offset(25, size.height / 2);
    double radius = 13;

    if (profile != null) {
//      canvas.drawImage(profile, new Offset(50.0, 50.0), new Paint());
//      canvas.drawCircle(center, radius, complete);

    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
