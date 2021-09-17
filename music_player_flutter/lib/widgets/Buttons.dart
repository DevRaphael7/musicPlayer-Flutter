import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';

class ButtonsControllerPlayers extends StatefulWidget{

  Music ms;

  @override 
  State createState() => new ButtonsControllerPlayersState(ms);

  ButtonsControllerPlayers(Music musica){
    this.ms = musica;
  }
}

class ButtonsControllerPlayersState extends State<ButtonsControllerPlayers>{

  Music musica;
  // AudioCache cache;
  // AudioPlayer _player;

  // @override
  // void initState() {
  //   super.initState();
  //   _player = AudioPlayer();
  //   cache = AudioCache(fixedPlayer: _player);
  // }

  @override 
  Widget build(BuildContext context){
    // cache.load("assets/Howls Moving Castle.mp3");
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
                  // cache.play("assets/Howls Moving Castle.mp3");
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
                onPressed: (){},
                child: Icon(
                  Icons.skip_next,
                ),
              ),
            ],
          );
  }
  ButtonsControllerPlayersState(Music musica){
    this.musica = musica;
  }
}