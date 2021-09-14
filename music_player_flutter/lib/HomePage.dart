import 'package:flutter/material.dart';
import 'package:music_player_flutter/widgets/MusicBox.dart';
import 'components/Musicas.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ 
            Color(0xff171b4b),
            Color(0xff760ed0),
            // Color(0xff274a75)
            // Color(0xffeb0a3d)
          ]
        )
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Anos 80",
              style: TextStyle(
                fontSize: 25.0,
                decoration: TextDecoration.none,
                color: Colors.white,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 5.0)),
          
          MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0]),
           
          
        ],
      ),
    );
  }
}