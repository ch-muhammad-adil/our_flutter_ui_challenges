import 'package:flutter/material.dart';
import 'package:my_flutter_ui_challenges/music_player_challenge/model/Song.dart';
import 'package:my_flutter_ui_challenges/music_player_challenge/player_screen.dart';

class HomeScreenMusic extends StatefulWidget {
  NotchedShape notchedShape;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenMusic> {
  double _screenHeight;
  double _screenWidth;
  List<Song> songs = [
    Song(
        "first",
        "https://images.wallpaperscraft.com/image/lamborghini_aventador_lp_750_4_sv_108049_1920x1080.jpg",
        "A"),
    Song(
        "second",
        "https://images.wallpaperscraft.com/image/chevrolet_corvette_stingray_c7_95549_1920x1080.jpg",
        "B"),
    Song(
        "third",
        "https://images.wallpaperscraft.com/image/chevrolet_corvette_zr1_red_side_view_111024_1920x1080.jpg",
        "C"),
    Song(
        "forth",
        "https://images.wallpaperscraft.com/image/chevrolet_corvette_z06_red_106003_300x168.jpg",
        "D"),
    Song(
        "fifth",
        "https://images.wallpaperscraft.com/image/chevrolet_corvette_z06_blue_side_view_mountain_103870_300x168.jpg",
        "E"),
  ];

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 3,
          title: Text(
            "Music Library",
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 25,
            ),
            textAlign: TextAlign.left,
          ),
          bottom: TabBar(
            indicatorColor: Colors.deepPurple[700],
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Playlists",
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              ),
              Tab(
                child: Text("Artists",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ),
              Tab(
                  child: Text(
                "Albums",
                style: TextStyle(color: Colors.grey[400], fontSize: 12),
              )),
              Tab(
                child: Text("Songs",
                    style: TextStyle(color: Colors.grey[400], fontSize: 12)),
              ),
              Tab(
                child: Text(
                  "Genres",
                  style: TextStyle(color: Colors.grey[400], fontSize: 12),
                ),
              )
            ],
          ),
        ),
        body: Stack(
          children: <Widget>[
            TabBarView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: CustomScrollView(
                    scrollDirection: Axis.vertical,
                    slivers: <Widget>[
                      SliverFixedExtentList(
                        itemExtent: 100,
                        delegate: SliverChildBuilderDelegate(
                            (context, index) => BuidSingleItem(context, index),
                            childCount: songs.length),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Tab 2 Layout'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Tab 3 Layout'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Tab 4 Layout'),
                  ),
                ),
                Container(
                  child: Center(
                    child: Text('Tab 5 Layout'),
                  ),
                )
              ],
            ),
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
        bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Icon(
                    Icons.dehaze,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 15),
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 25,
                  ),
                )
              ],
            ),
            color: Colors.deepPurple[700],
          ),
        ),
//        bottomNavigationBar: BottomAppBar(
//          shape: CircularNotchedRectangle(),
//          child: Row(
//            mainAxisSize: MainAxisSize.max,
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              Container(
//                margin: EdgeInsets.only(top: 10, left: 13),
//                child: Icon(
//                  Icons.dehaze,
//                  color: Colors.white,
//                  size: 25,
//                ),
//              ),
//              Container(
//                margin: EdgeInsets.only(top: 10, right: 13),
//                child: Icon(
//                  Icons.search,
//                  color: Colors.white,
//                  size: 25,
//                ),
//              )
//            ],
//          ),
//          color: Colors.deepPurple[700],
//        ),
      ),
    );
  }

  @override
  Widget BuidSingleItem(BuildContext context, int index) {
    int newIndex = index + 1;
    return Container(
      margin:
          EdgeInsets.fromLTRB(20, 10, 10, index == songs.length - 1 ? 10 : 0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      MusicPlayerScreen(song: songs.elementAt(index))));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.deepPurple,
                  child: Image.network(
                    songs.elementAt(index).picture,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: _screenWidth * 0.60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(newIndex < 10 ? "0$newIndex." : "$newIndex."),
                          SizedBox(
                            width: 3,
                          ),
                          Expanded(
                            child: Text(
                              songs.elementAt(index).name,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            songs.elementAt(index).singer,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(" ",
                              style: TextStyle(
                                color: Colors.grey[500],
                              ))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            Expanded(
              child: Container(
                child: Icon(Icons.more_vert, color: Colors.grey[500]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
