import 'package:flutter/material.dart';
import 'package:music_player_flutter/widgets/MusicBox.dart';
import 'package:music_player_flutter/widgets/Text.dart';
import 'components/Musicas.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ 
                Color(0xff262526),
                Color(0xff262526)
              ]
            )
          ),
      child: SingleChildScrollView(
          padding: EdgeInsets.only(
            top: 25.0,
            left: 20.0,
            right: 20.0
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: TextForHomePage("Recomendadas para você")
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][1], musicas['Artista'][1], musicas['Asset'][1], musicas['id'][1]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][2], musicas['Artista'][2], musicas['Asset'][2], musicas['id'][2]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][3], musicas['Artista'][3], musicas['Asset'][3], musicas['id'][3]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                  ],
                ),
              ),
            ],
          ),
      ),
    );
  }
}