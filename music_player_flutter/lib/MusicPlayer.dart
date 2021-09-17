import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
import 'package:music_player_flutter/widgets/Buttons.dart';
import 'package:music_player_flutter/widgets/Text.dart';
import 'components/Musicas.dart';
import 'package:audioplayers/audioplayers.dart';


class MusicPlayer extends StatefulWidget{

  @override 
  State createState() => new MusicPlayerState();
}

class MusicPlayerState extends State<MusicPlayer>{
  
  Music musica = new Music();

  @override 
  Widget build(BuildContext context){
    Map data = ModalRoute.of(context).settings.arguments;

    int indice = data["indice"];
    if (indice == null) indice = 1;
    musica.atribuirValor(musicas, indice);

    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ 
            Color(0xff262526),
            Color(0xff262526)
          ]
        ),
      ),
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10.0)),
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
                  image: AssetImage(musica.picture),
                )
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40.0),),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0:00",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.white
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 200.0)),
              Text(
                "3:50",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 15,
                  color: Colors.white
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Center(
            child: Container(
              height: 1,
              width: 300,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: ButtonsControllerPlayers(musica),
            ),
        ],
      ),
    );
  }
}