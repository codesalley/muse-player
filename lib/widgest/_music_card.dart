import 'package:flutter/material.dart';

class Music_Card extends StatelessWidget {
  Music_Card({this.artistName, this.song_Title, this.album_Art});
  final String song_Title;
  final String artistName;
  final AssetImage album_Art;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 1, top: 10),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: album_Art,
          ),
        ),
      ),
      title: Text(
        song_Title,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        artistName,
        style: TextStyle(color: Colors.white),
      ),
      trailing: Icon(
        Icons.more_vert,
        color: Colors.white,
      ),
    );
  }
}
