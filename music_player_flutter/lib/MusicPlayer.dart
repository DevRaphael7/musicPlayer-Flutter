import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
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
            // Color(0xff171b4b),
            // Color(0xff760ed0),
            // Color(0xff274a75)
            // Color(0xffeb0a3d)
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
              child: Text(
                musica.nome,
                style: TextStyle(
                  fontSize: 30.0,
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
                musica.artista,
                style: TextStyle(
                  fontSize: 15.0,
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
                  image: AssetImage(musica.picture),
                )
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 20.0),),
          
          
        
          Expanded(
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
                          if(musica.rodarMusica()){
                            // cache.play(path);
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
                )
            ),
        ],
      ),
    );
  }
}