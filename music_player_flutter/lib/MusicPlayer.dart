import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
import 'package:music_player_flutter/widgets/Buttons.dart';
import 'package:music_player_flutter/widgets/Text.dart';
import 'components/Musicas.dart';

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
          Padding(
            padding: EdgeInsets.only(
              top: 5.0,
            ),
            child: Align(
            alignment: Alignment.centerLeft,
            child: MaterialButton(
                    textColor: Colors.white,
                    onPressed: () { 
                      setState((){
                        Navigator.of(context).pushNamed("/HomePage");
                      });
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
}