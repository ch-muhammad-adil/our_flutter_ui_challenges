import 'package:flutter/material.dart';
import 'package:my_flutter_ui_challenges/music_player_challenge/model/Song.dart';
import 'dart:ui' as ui;

class MusicPlayerScreen extends StatefulWidget {
  Song song;

  MusicPlayerScreen({@required this.song});

  @override
  _MusicPlayerScreenState createState() => _MusicPlayerScreenState(song: song);
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  Song song;
  double _screenHeight;
  double _screenWidth;

  _MusicPlayerScreenState({@required this.song});

  List<String> list = [
    "first song is ",
    "second song is ",
    "third song is ",
    "forth song is ",
    "fifth song is ",
    "sixth song is ",
    "seventh song is ",
    "eighth song is ",
    "ninth song is ",
    "tenth song is "
  ];

  PageController _controller;
  int index = 0;
  double _value = 0.0;

//  int font = 14;

  void onChanged(double value) {
    setState(() {
      _value = value;
    });
  }

  @override
  void initState() {
    _controller = PageController(
      viewportFraction: 0.50,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
          children: <Widget>[
            Container(
              height: _screenHeight * 0.12,
              padding: EdgeInsets.only(left: 10, right: 10, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Icon(
                    Icons.queue_music,
                    size: 30,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Stack(children: <Widget>[
                  Container(
                    width: _screenWidth,
                    height: _screenWidth,
                    child: Image.network(
                      song.picture,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRect(
                    child: new BackdropFilter(
                      filter: ui.ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: new Container(
                        width: _screenWidth,
                        height: _screenWidth,
                        decoration: new BoxDecoration(
                            color: Colors.grey[300].withOpacity(1),
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Colors.black26.withOpacity(0.2),
                                  Colors.black26.withOpacity(0.2),
                                  Colors.black26.withOpacity(0.2),
                                  Colors.black26.withOpacity(0.2),
                                  Colors.black26.withOpacity(0.2)
                                ])),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    verticalDirection: VerticalDirection.down,
                    children: <Widget>[
                      SizedBox(
                        height: _screenHeight * 0.010,
                      ),
                      Text(
                        song.name,
                        style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: _screenHeight * 0.020,
                      ),
                      Container(
                        height: _screenHeight * 0.28,
                        width: _screenHeight * 0.28,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            song.picture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: _screenHeight * 0.17,
                        width: _screenWidth,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: _screenWidth/7
                        ),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              GestureDetector(
                                child: Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.grey,
                                ),
                                onTap: () {},
                              ),
                              Container(
                                constraints: BoxConstraints(
                                    maxHeight: _screenHeight * 0.10,
                                    maxWidth: double.infinity),
                                margin: EdgeInsets.only(left: 15, right: 15),
                                alignment: Alignment.center,
                                child: PageView.builder(
                                    onPageChanged: (int index) {
                                      this.index = index;
                                      setState(() {});
                                    },
                                    pageSnapping: true,
                                    controller: _controller,
                                    itemBuilder: (context, int index) {
                                      return Text(
                                        list.elementAt(index),
                                        style: TextStyle(
                                            color: Colors.grey[700],
                                            fontSize: this.index == index ? 30 : 14),
                                        textAlign: TextAlign.center,
                                      );
                                    },
                                    itemCount: list.length,
                                    scrollDirection: Axis.vertical,
                                    physics: PageScrollPhysics()),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  child: Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  ),
                                  onTap: () {},
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Align(
                        child: Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.grey,
                            )),
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          height: _screenHeight * 0.10,
                          width: double.infinity,
                          child: Column(
                            children: <Widget>[
                              Slider(
                                value: 50.0,
                                onChanged: (double value) {
                                  onChanged(value);
                                },
                                min: 0.0,
                                max: 100.0,
                                activeColor: Colors.red,
                                inactiveColor: Colors.grey,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("2:00"),
                                    Text("4:00"),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Icon(
                                      Icons.repeat,
                                      size: 32,
                                    ),
                                    Icon(
                                      Icons.skip_previous,
                                      size: 32,
                                    ),
                                    Icon(
                                      Icons.skip_next,
                                      size: 32,
                                    ),
                                    Icon(
                                      Icons.shuffle,
                                      size: 32,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]))
          ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(
          Icons.play_arrow,
        ),
        elevation: 2.0,
      ),
      bottomNavigationBar: bottomNavigation(context),
    );
  }

  @override
  Widget bottomNavigation(BuildContext context) {
    return Container(
      height: 60,
      child: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 5, left: 15),
              child: Icon(
                Icons.dehaze,
                color: Colors.white,
                size: 25,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 5, right: 15),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.white,
                      size: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 25,
                    ),
                  ],
                ))
          ],
        ),
        color: Colors.deepPurple[700],
      ),
    );
  }

  moveToIndex(int index) {
    _controller.animateTo((_screenHeight * 0.05 * index),
        // 100 is the height of container and index of 6th element is 5
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut);
    Text(
      list.elementAt(index),
      style: TextStyle(
          fontSize: 30, color: Colors.purple, fontWeight: FontWeight.w600),
    );
  }
}
