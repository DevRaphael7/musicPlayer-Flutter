import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
import 'package:flutter/services.dart';

class ButtonsControllerPlayers extends StatefulWidget{

  Music ms;
  int ind;

  @override 
  State createState() => new ButtonsControllerPlayersState(ms,ind);

  ButtonsControllerPlayers(Music musica, int ind){
    this.ms = musica;
    this.ind = ind;
  }
}

class ButtonsControllerPlayersState extends State<ButtonsControllerPlayers>{

  Music musica;
  final player = AudioPlayer();
  static AudioCache cache;
  int inc;

  @override 
  Widget build(BuildContext context){

    cache = new AudioCache(fixedPlayer: player);

    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                hoverColor: Color(0xff171b4b),
                backgroundColor: Colors.black.withOpacity(0.3),
                onPressed: (){},
                child: Icon(
                  Icons.skip_previous
                ),
              ),
              FloatingActionButton(
                hoverColor: Color(0xff171b4b),
                backgroundColor: Colors.black.withOpacity(0.3),
                onPressed: (){
                  SystemSound.play(SystemSoundType.click);

                  if ( musica.icone == Icons.play_arrow ){
                    cache.play(musica.music_name);
                  } else if ( musica.icone == Icons.pause){
                    player.pause();
                  }

                  setState((){
                    if(musica.rodarMusica()){
                      musica.iconeButton();
                    }
                  });
                },
                child: Icon(
                  musica.iconeButton(),
                ),
              ),
              FloatingActionButton(
                hoverColor: Color(0xff171b4b),
                backgroundColor: Colors.black.withOpacity(0.3),
                onPressed: (){
                },
                child: Icon(
                  Icons.skip_next,
                ),
              ),
            ],
          );
  }
  ButtonsControllerPlayersState(Music musica, int ind){
    this.musica = musica;
    this.inc = ind;
  }
}