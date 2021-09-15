// import 'package:audioplayers/audio_cache.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';

class MusicPlayer extends StatefulWidget{

  @override 
  State createState() => new MusicPlayerState();
}

class MusicPlayerState extends State<MusicPlayer>{

  
  Music musicas = new Music();

  @override 
  Widget build(BuildContext context){
    
    return Container(
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [ 
            Color(0xff171b4b),
            Color(0xff760ed0),
            // Color(0xff274a75)
            // Color(0xffeb0a3d)
          ]
        ),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 10),
              child: Text(
                "Howl's Moving Castle",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                ),
              )
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                top: 5,
                left: 10),
              child: Text(
                "Joe Hisaishi",
                style: TextStyle(
                  fontSize: 12.0,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontWeight: FontWeight.w100
                ),
              ),
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
                  image: AssetImage("assets/HOWL.png"),
                )
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0),),
          
          
        
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                )
              ),
              child: Row(
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
                        
                        setState((){
                          if(musicas.rodarMusica()){
                            // cache.play(path);
                            musicas.iconeButton();
                          }
                        });
                      },
                      child: Icon(
                        musicas.iconeButton(),
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
                )
              
            ),
          )
        ],
      ),
    );
  }
}