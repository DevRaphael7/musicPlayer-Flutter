# Repositório de Flutter 😆

Repositório onde tento criar um MusicPlayer como Spotify no Flutter 

``` dart
import 'package:flutter/material.dart';

class Music{
  
  String nome;
  String artista;
  String picture;
  bool escutando;
  IconData icone;

  bool rodarMusica(){
    return escutando = escutando == true ? false : true;
  }

  IconData iconeButton(){
    return icone = escutando == true ?  Icons.pause : Icons.play_arrow;
  }

  void atribuirValor(Map valores, int indice){
    this.nome = valores["Nome"][indice];
    this.artista = valores["Artista"][indice];
    this.picture = valores["Asset"][indice];
  }
  Music(){
    this.escutando = false;
    this.icone = Icons.play_arrow;
  }

}
```
