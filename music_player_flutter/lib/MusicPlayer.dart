import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
import 'package:music_player_flutter/widgets/Buttons.dart';
import 'package:music_player_flutter/widgets/Text.dart';
import 'components/Musicas.dart';

class MusicPlayer extends StatelessWidget{
  
  final int indice;
  Music musica = new Music();

  @override 
  Widget build(BuildContext context){
    
    musica.atribuirValor(musicas, indice);

    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ 
            Color(0xff6633cc),
            Color(0xff5925e5)
          ]
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
            ),
            child: Align(
            alignment: Alignment.centerLeft,
            child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () { 
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                    )
                  ),
                ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10),
              child: TextForMusicPlayer(musica.nome, 30)
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 10),
              child: TextForMusicPlayer(musica.artista, 15.0)
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Center(
            child: Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(musica.picture),
                )
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30.0),),
          Expanded(
            child: ButtonsControllerPlayers(musica, indice),
          ),
        ],
      ),
    );
  }

  MusicPlayer({this.indice});
} 