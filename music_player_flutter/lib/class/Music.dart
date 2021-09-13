import 'package:flutter/material.dart';

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