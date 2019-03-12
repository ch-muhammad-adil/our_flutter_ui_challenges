import 'package:flutter/material.dart';
import 'package:my_flutter_ui_challenges/interior_decoration/booking_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  String title;

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Container(
//            color: Colors.red,
            height: 60,
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
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
                      margin: EdgeInsets.only(left: 10),
                      child: Text(
                        "Architect",
                        style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold,),
                        textScaleFactor: 1.25,
                      ),
                    )

                  ],
                ),
                Icon(
                  Icons.sort,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Container(
            height: 2,
            color: Colors.grey,
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(width: 30, height: 1, color: Colors.brown),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Learn more",
                        style: TextStyle(
                            color: Colors.brown,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.20,
                      left: MediaQuery.of(context).size.width * 0.40),
                  child: Text(
                    "02",
                    style: TextStyle(
                        fontSize: 55,
                        color: Colors.brown,
                        fontFamily: "Bubble"),
                    textScaleFactor: 2.5,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Text(
                    "Dark \t Interior",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 33,
                    ),
                    textScaleFactor: 2,
                  ),
                )
              ],
            ),
          ),
          Hero(
            transitionOnUserGestures: true,
            child: buildHorizontalListView(context),
            tag: "interior_decoration",
          ),
        ],
      ),
    );
  }

  @override
  Widget buildHorizontalListView(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.50,
        child: PageView.builder(
          controller: PageController(viewportFraction: 0.8),
          itemBuilder: (context, int index) {
            return Container(
              margin: EdgeInsets.fromLTRB(
                  index != 0 ? 10 : 0, 0, index != 2 ? 10 : 0, 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookingScreen(index)));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 3,
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
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

//                        Image.asset(
//                          "assets/chairs.jpg",
//                          height: double.infinity,
//                          fit: BoxFit.cover,
//                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: 3,
          scrollDirection: Axis.horizontal,
        ));
  }
}
