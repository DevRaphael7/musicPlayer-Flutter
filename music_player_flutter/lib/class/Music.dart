import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/widgets/Slider.dart';

class Music{
  
  bool escutando;
  IconData icone;

  bool rodarMusica(){
    return escutando = escutando == true ? false : true;
  }

  IconData iconeButton(){
    return icone = escutando == true ?  Icons.pause : Icons.play_arrow;
  }

  Music(){
    this.escutando = false;
    this.icone = Icons.play_arrow;
  }

}