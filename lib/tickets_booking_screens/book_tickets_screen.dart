import 'package:flutter/material.dart';
import 'package:my_flutter_ui_challenges/tickets_booking_screens/home_screen.dart';

class TicketBookingScreen extends StatefulWidget {
  TicketBookingScreen({Key key, this.title}) : super(key: key);

  String title;

  @override
  _TicketBookingScreenState createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeWidget(),
    HomeWidget(),
    HomeWidget(),
    HomeWidget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.phone,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
              icon: new Icon(
                Icons.mail,
                color: Colors.black,
              ),
              title: new Text(''),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(''))
          ],
        ));
  }
}

/// this class is representing bottom navigation home tab.

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 15, top: 50),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 28,
                ),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Book Tickets",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            height: 17,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flight",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purpleAccent,
                        ),
                        child: Icon(
                          Icons.train,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Train",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue,
                        ),
                        child: Icon(
                          Icons.directions_bus,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Bus",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  alignment: Alignment.centerRight,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "Best for you",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          buildHorizontalListView(context),
          BuildOffersListView(context)
        ],
      ),
    );
  }

  @override
  Widget buildHorizontalListView(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 17, right: 20),
        height: 250.0,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: 210,
              delegate: SliverChildBuilderDelegate(
                  (context, index) => BuidTile(context, index),
                  childCount: 3),
            ),
          ],
        ));
  }

  @override
  Widget BuidTile(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(index != 0 ? 7 : 0, 0, index != 2 ? 7 : 0, 7),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MyHomePageScreen()));
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          child: Stack(
            children: <Widget>[
              ClipRRect(
                child: Image.asset(
                  "assets/beach.jpeg",
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "Alibag Beach",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "India",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 60,
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "4.7",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.white),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget BuildOffersListView(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 17, right: 20),
        height: 70.0,
        child: CustomScrollView(
          scrollDirection: Axis.horizontal,
          slivers: <Widget>[
            SliverFixedExtentList(
              itemExtent: MediaQuery.of(context).size.width * 0.70,
              delegate: SliverChildBuilderDelegate(
                  (context, index) => BuildSingleOffersItem(context, index),
                  childCount: 3),
            ),
          ],
        ));
  }

  @override
  Widget BuildSingleOffersItem(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.fromLTRB(index != 0 ? 7 : 0, 0, index != 2 ? 7 : 0, 7),
      child: GestureDetector(
        onTap: () {
          print("Tapped");
        },
        child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Colors.grey[300], width: 0.5)),
            color: Colors.white,
            child: Row(
//              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 10),
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.purple[300]),
                  child: Image.asset(
                    "assets/percent.png",
//                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
//                      Center(
                      Text(
                        "25% off on first booking",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
//                      ),
                      Text(
                        "use coupon code 'CDGHND'",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
