import 'package:flutter/material.dart';
import 'package:music_player_flutter/components/Musicas.dart';
import 'package:music_player_flutter/widgets/ListMusic.dart';
import 'package:music_player_flutter/widgets/Text.dart';

class Playlists extends StatelessWidget{

  int index = 0;
  List listaDeAutores = [];
  List assetsDeAutores = [];

  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextForHomePage("Playlist de músicas"),
            Padding(padding: EdgeInsets.only(top: 10)),
            ListView.builder(
              shrinkWrap: true,
              itemCount: musicas.length - 2,
              itemBuilder: (context, index) {
                int aux = 0;
                
                for (String palavra in musicas['Artista']) {
                  if(!listaDeAutores.contains(palavra)) {
                    listaDeAutores.add(palavra);
                    assetsDeAutores.add(musicas['Asset'][aux]);
                  }
                  aux += 1;
                }
                return ListMusic(asset: assetsDeAutores.elementAt(index),nome: listaDeAutores.elementAt(index));
              }
            )
          ],
        )
      ),
    );
  }
}