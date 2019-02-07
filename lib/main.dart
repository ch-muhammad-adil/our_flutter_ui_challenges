import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:my_flutter_ui_challenges/car_rental_screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scope Model Learning',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage> {
  List<String> challengesList = [
    "Car Rental App Screens",
    "Ticket Booking App Screens"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flutter UI Challenges'),
              background: Image.asset(
                'assets/desert.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(top: 10),
          ),
          SliverFixedExtentList(
            itemExtent: 60,
            delegate: SliverChildBuilderDelegate(
              (context, index) => DesignItems(challengesList[index]),
              childCount: challengesList.length,
            ),
          )
        ],
      ),
    );
  }
}

class DesignItems extends StatelessWidget {
  String title;
  DesignItems(String title){
    this.title = title;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.orangeAccent,
        ),
        margin: EdgeInsets.fromLTRB(10, 3, 10, 10),
        child: Stack(
          children: <Widget>[
            Center(
              child: Text(
                title,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CarRentalSignupScreen()));
              },
            )
          ],
        ));
  }
}
