import 'package:flutter/material.dart';

class MusicPlayer extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ 
            Color(0xff3e0e68),
            Color(0xff760ed0),
          ]
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10),
              child: Text(
                "Howl's Moving Castle",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 10),
              child: Text(
                "Joe Hisaishi",
                style: TextStyle(
                  fontSize: 12.0,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w100
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 50.0)),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                  image: AssetImage("assets/Howl.jpg"),
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}