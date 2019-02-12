import 'package:flutter/material.dart';
class BankingAppHomeScreen extends StatefulWidget {
  BankingAppHomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BankingAppHomeScreenState createState() => _BankingAppHomeScreenState();
}

class EmptyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => Size(0.0, 0.0);
}

class _BankingAppHomeScreenState extends State<BankingAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: false,
      appBar: EmptyAppBar(),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.orange,
              ),
              Positioned(
                  bottom: 150,
                  left: -40,
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                        color: Colors.yellowAccent[100].withOpacity(0.1)),
                  )),
              Positioned(
                  top: -120,
                  left: 100,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(150),
                        color: Colors.yellowAccent[100].withOpacity(0.1)),
                  )),
              Positioned(
                  top: -50,
                  left: 0,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.yellowAccent[100].withOpacity(0.1)),
                  )),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(75),
                        color: Colors.yellowAccent[100].withOpacity(0.1)),
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 35.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Savings Ac.",
                          style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(),
                        ),
                        RaisedButton(
                          child: Text(
                            "Active",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          onPressed: () {},
                          elevation: 1.0,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                    child: Text(
                      "****4546",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white.withOpacity(0.70),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Material(
                        elevation: 2.0,
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Available Balance',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              ),
                              Row(
                                children: <Widget>[
                                  Text(
                                    '7567.86',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'INR',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          getGridView()
        ],
      ),
    );
  }


  Widget getGridView() {

    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      primary: false,
      childAspectRatio: (MediaQuery
          .of(context)
          .size
          .width - 60 / 2) / 280,
      children: <Widget>[
        createTile(0,_selectedIndex,false, 'Profile', Colors.purple, Icons.person),
        createTile(1,_selectedIndex,true, 'Activity', Colors.yellow, Icons.local_activity),
        createTile(2,_selectedIndex,false, 'Statement', Colors.brown, Icons.print),
        createTile(3,_selectedIndex,true, 'Transfer', Colors.red, Icons.local_atm),
        createTile(4,_selectedIndex,false, 'Overview', Colors.green, Icons.remove_red_eye),
        createTile(5,_selectedIndex,true, 'Settings', Colors.blue, Icons.settings),
      ],
    );
  }
  int _selectedIndex = -1;
  Widget createTile(int index,int selectedIndex,bool isEven, String title, Color color, IconData icon) {

    return Padding(
      padding: EdgeInsets.only(
          left:  isEven?10:20, right: isEven?20:10, top: 10, bottom: 10),
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: GestureDetector(
          onTap: (){
            setState(() {
              _selectedIndex = index;
            });
          },
          child: Material(
            elevation: 3.0,
            color: _selectedIndex==index?Colors.orange:Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 20,top: 20,bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Icon(icon,color: _selectedIndex==index?Colors.white:color,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: _selectedIndex==index?Colors.white:Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:2.0),
                        child: Container(
                          height: 3.0,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.0),
                            color: _selectedIndex==index?Colors.orange:color,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
