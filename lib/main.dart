import 'package:flutter/material.dart';
import 'package:my_flutter_ui_challenges/banking_application_screens/banking_application_home_screen.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:my_flutter_ui_challenges/car_rental_screens/signup_screen.dart';
import 'package:my_flutter_ui_challenges/tickets_booking_screens/book_tickets_screen.dart';
import 'package:my_flutter_ui_challenges/interior_decoration/home_screen.dart';
import 'package:my_flutter_ui_challenges/login_signup_screens/login_screen.dart';

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
    "Ticket Booking App Screens",
    "Banking App Home Screen",
    "Interior Decoration Screens",
    "Login Signup Screens"
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
                (context, index) => SingleItem(challengesList[index], index),
                childCount: challengesList.length,
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(bottom: 20),)
          ],
      ),
    );
  }
}

class SingleItem extends StatelessWidget {
  String title;
  int index;

  SingleItem(String title, int index) {
    this.title = title;
    this.index = index;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 3, 10, 3),
      child: GestureDetector(
        onTap: () {
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CarRentalSignupScreen()));
          }else if(index == 1){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => TicketBookingScreen()));
          }else if(index == 2){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BankingAppHomeScreen()));
          }else if (index == 3){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen()));
          }else if (index == 4){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => LoginScreen()));
          }
        },
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 3,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
