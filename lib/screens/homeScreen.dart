import 'package:flutter/material.dart';
import 'package:muse/utilities/nav_buttons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
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
            Padding(
              padding: EdgeInsets.only(right: 50, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    myList.nav[0],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    myList.nav[1],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    myList.nav[2],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    myList.nav[3],
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
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 1, top: 10),
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image(
                          image: AssetImage('res/album1.png'),
                        ),
                      ),
                    ),
                    title: Text(
                      'Dami Duro',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      'Davido',
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Icon(Icons.nav),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
