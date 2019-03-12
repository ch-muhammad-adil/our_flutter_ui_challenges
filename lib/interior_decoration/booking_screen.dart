import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BookingScreen extends StatefulWidget {
  int index;

  BookingScreen(int index) {
    this.index = index;
  }

  @override
  _BookingScreenState createState() => _BookingScreenState(index);
}

class _BookingScreenState extends State<BookingScreen> {
  int index;

  _BookingScreenState(int index) {
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.5;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Hero(
                  transitionOnUserGestures: true,
                  tag: "interior_decoration",
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: index == 0
                        ? Image.asset(
                            "assets/chairs.jpg",
                            height: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : index == 1
                            ? Image.asset(
                                "assets/chairs_2.jpg",
                                height: double.infinity,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                "assets/chairs_3.jpg",
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                  ),
                ),

                Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.infinity,
                  color: Colors.black,
                  child: Container(
                    margin: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        // first row contains two columns
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("DESIGNER",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("SHAYOR JULLY",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "DATE",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "2017-2019",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("COLOR",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("DARK BLACK",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14))
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "COMPANY",
                                  style: TextStyle(
                                      color: Colors.grey[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "DETALITY CO.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 20,
                              height: 20,
                              color: Colors.brown,
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              color: Colors.grey[700],
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Container(
                              width: 12,
                              height: 12,
                              color: Colors.grey[700],
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          height: MediaQuery.of(context).size.height * 0.075,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                  width: 2,
                                  color: Colors.brown,
                                  style: BorderStyle.solid)),
                          child: Center(
                            child: Text(
                              "Pre Order",
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
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
          ],
        ));
  }
}
