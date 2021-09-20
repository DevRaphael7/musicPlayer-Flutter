import 'package:flutter/material.dart';
import 'package:music_player_flutter/telas/Buscar.dart';
import 'package:music_player_flutter/telas/Musics.dart';
import 'package:music_player_flutter/telas/Playlists.dart';

class HomePage extends StatefulWidget{

  @override 
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{

  int indexTelas = 2;

  final Telas = [
    Musics(),
    Playlists(),
    Buscar()
  ];

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Telas[indexTelas],
      backgroundColor: Color(0xff262526),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexTelas,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xff262526).withOpacity(0.4),
            icon: Icon(
              Icons.music_note,
              color: Colors.white,
            ),
            title: Text("Músicas", style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff262526).withOpacity(0.4),
            icon: Icon(
              Icons.list_alt_outlined, 
              color: Colors.white,
            ),
            title: Text("Playlist", style: TextStyle(color: Colors.white),)
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xff262526).withOpacity(0.4),
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            title: Text("Procurar", style: TextStyle(color: Colors.white),)
          ),
        ],
        onTap: (index){
          setState((){
            indexTelas = index;
          });
        },
      ),
    );
  }
}