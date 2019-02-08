import 'package:flutter/material.dart';

class MyHomePageScreen extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  final String title;

  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Image.asset(
            "assets/beach.jpeg",
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.all(20),
//            color: Colors.red,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Alibag Beach",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.7",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 12,
                        color: Colors.green[200],
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "India",
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  child: Text(
                    "Alibag is surrounded by sea on three sides, it is very commonly known as the 'Goa' of Maharashtra. The town was founded in the 17th century.",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 12),
                  height: MediaQuery.of(context).size.height * 0.20,
//                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
//                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(20)),
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: ClipRRect(
                          child: Image.asset(
                            "assets/beach_1.jpg",
                            height: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
//                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20)),
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width / 2 - 30,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 - 10,
                              decoration: BoxDecoration(
//                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(20)),
                              child: ClipRRect(
                                child: Image.asset(
                                  "assets/beach_2.jpg",
                                  width: double.infinity,
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.1 - 10,
                              decoration: BoxDecoration(
//                                  color: Colors.teal,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
//                                    height: MediaQuery.of(context).size.height*0.1 -10,
                                    decoration: BoxDecoration(
//                                        color: Colors.purpleAccent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            120,
                                    child: ClipRRect(
                                      child: Image.asset(
                                        "assets/beach_3.jpg",
                                        height: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
//                                        color: Colors.purpleAccent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    width:
                                        MediaQuery.of(context).size.width / 2 -
                                            120,
                                    child: ClipRRect(
                                      child: Image.asset(
                                        "assets/beach_4.jpg",
                                        height: double.infinity,
                                        fit: BoxFit.fill,
                                      ),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
//                  color: Colors.purpleAccent,
                  height: 50,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        alignment: Alignment(0, 0),
                        children: <Widget>[
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.grey[300], width: 1)),
                          ),
                          Icon(
                            Icons.arrow_back,
                            color: Colors.grey[300],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: double.infinity,
                        width: MediaQuery.of(context).size.width - 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border:
                                Border.all(color: Colors.grey[300], width: 1)),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: double.infinity,
                              width:
                                  MediaQuery.of(context).size.width * 0.375 - 1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Return ticket",
                                    style: TextStyle(
                                        color: Colors.grey[400], fontSize: 12),
                                  ),
                                  SizedBox(
                                    height: 2.5,
                                  ),
                                  Text(
                                    "Rs. 4500",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: double.infinity,
                              width: MediaQuery.of(context).size.width * 0.375 -
                                  17.250,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    "Book",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
