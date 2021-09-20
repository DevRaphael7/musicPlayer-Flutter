import 'package:flutter/material.dart';
import 'package:music_player_flutter/widgets/Text.dart';

class Playlists extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextForHomePage("Playlist de músicas"),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: itemBuilder
            )
          ],
        )
      ),
    );
  }
}