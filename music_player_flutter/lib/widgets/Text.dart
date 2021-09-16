import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';

class TextForHomePage extends StatelessWidget{

  String txt;

  @override 
  Widget build(BuildContext context){
    return Text(
            txt,
            style: TextStyle(
              fontSize: 22.0,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          );
  }

  TextForHomePage(String txt){
    this.txt = txt;
  }
}

class TextForMusicPlayer extends StatelessWidget{

  String txt;
  double size;

  @override 
  Widget build(BuildContext context){
    return Text(
              txt,
              style: TextStyle(
                fontSize: size,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none
              ),
            );
  }

  TextForMusicPlayer(String musica, double size){
    this.txt = txt;
    this.txt = musica;
    this.size = size;
  }
}