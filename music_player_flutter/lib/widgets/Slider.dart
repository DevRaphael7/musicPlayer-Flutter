import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';

Duration position = new Duration();
Duration musicLength = new Duration();

Widget slider(AudioPlayer _player){
  return Slider.adaptive(
    activeColor: Colors.purpleAccent[500],
    inactiveColor: Colors.lightBlueAccent[900],
    value: position.inSeconds.toDouble(), 
    max: musicLength.inSeconds.toDouble(),
    onChanged: (value){
      seekToSec(value.toInt(), _player);
    });
}

void seekToSec(int sec, AudioPlayer _player){
  Duration newPos = Duration(seconds: sec);
  _player.seek(newPos);
}