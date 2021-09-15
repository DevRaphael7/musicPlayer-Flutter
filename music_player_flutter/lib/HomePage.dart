import 'package:flutter/material.dart';
import 'package:music_player_flutter/widgets/MusicBox.dart';
import 'components/Musicas.dart';

class HomePage extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.only(
            top: 25.0,
            left: 20.0,
            right: 20.0
          ),
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
            )
          ),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Recomendadas para você",
                  style: TextStyle(
                    fontSize: 22.0,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Animes",
                  style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Animes",
                  style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Animes",
                  style: TextStyle(
                    fontSize: 25.0,
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                    MusicBox(musicas['Nome'][0], musicas['Artista'][0], musicas['Asset'][0], musicas['id'][0]),
                    Padding(padding: EdgeInsets.only(right: 12.0)),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
            ],
          ),
        )
    );
  }
}