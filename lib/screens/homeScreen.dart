import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:muse/utilities/nav_buttons.dart';
import 'package:muse/widgest/_music_card.dart';
import 'package:muse/constant.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Music',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                      height: 10,
                    ),
                    Icon(
                      Icons.equalizer,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 50, top: 20, left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  MyList.nav[0],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  MyList.nav[1],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  MyList.nav[2],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                Text(
                  MyList.nav[3],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 15.0,
              left: 15,
              right: 15,
            ),
            child: Row(
              children: [
                Icon(
                  Icons.shuffle,
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Text(
                  'Shuffle',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Music_Card(
                          artistName: 'Sapashini',
                          song_Title: 'Bana',
                          album_Art: AssetImage('res/album1.png'),
                        ),
                        Music_Card(
                          artistName: 'Sapashini',
                          song_Title: 'Bana',
                          album_Art: AssetImage('res/album1.png'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Now_Playing(),
        ],
      ),
    );
  }
}

class Now_Playing extends StatelessWidget {
  const Now_Playing({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(top: 10),
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
            color: KforegoundColor,
          ),
          child: ListTile(
            leading: Icon(
              Icons.equalizer_rounded,
              color: Colors.redAccent,
            ),
            title: Text(
              'We dey collect',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            subtitle: Text(
              'Fancy Gadam',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: KbackgroundColor,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 5,
                    color: KbackgroundColor.withOpacity(0.2),
                  ),
                ],
              ),
              child: Container(
                width: 50,
                height: 50,
                foregroundDecoration: BoxDecoration(
                  color: Colors.redAccent.withOpacity(0.05),
                  shape: BoxShape.circle,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: KbackgroundColor,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 5,
                      color: KbackgroundColor.withOpacity(0.2),
                    )
                  ],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.pause,
                  color: Color(0xffE9452E),
                  size: 30,
                ),
              ),
            ),
            //trailing: ,
          ),
        ),
      ),
    );
  }
}
