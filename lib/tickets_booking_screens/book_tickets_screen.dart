import 'package:flutter/material.dart';

class TicketBookingScreen extends StatefulWidget {
  TicketBookingScreen({Key key, this.title}) : super(key: key);

  String title;

  @override
  _TicketBookingScreenState createState() => _TicketBookingScreenState();
}

class _TicketBookingScreenState extends State<TicketBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
          ],
        ),
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
                  (context, index) => SingleItem(index),
                  childCount: 2),
            ),
          ],
        ));
  }
}

class SingleItem extends StatelessWidget {
  String title = "";
  int index = 0;

  SingleItem(int index) {
    this.title = title;
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(index != 0 ? 7 : 0, 0, index != 3 ? 7 : 0, 0),
      child: GestureDetector(
        onTap: () {},
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          elevation: 3,
          color: Colors.orangeAccent,
          child: Row(
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
                        Icon(Icons.location_on, size: 12, color: Colors.white,),
                        SizedBox(width: 2,),
                        Text(
                          "India",
                          style: TextStyle(color: Colors.white, fontSize: 12,),
                        )
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
