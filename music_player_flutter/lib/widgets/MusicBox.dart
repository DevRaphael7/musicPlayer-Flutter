import 'package:flutter/material.dart';
import 'package:music_player_flutter/class/Music.dart';
import 'package:music_player_flutter/components/Functions.dart' as function;

class MusicBox extends StatelessWidget{

  int indice;
  Map dicionario;
  Music musicas = new Music();

  @override
  Widget build(BuildContext context){

    musicas.atribuirValor(dicionario, indice);

    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MaterialButton(
            child: ClipRRect(
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(musicas.picture)
                    )
                  )
                ),
              ),
              onPressed: () {
                function.passarParaOutraTela(context, "/MusicPlayer", indice, dicionario);
              },
            ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            musicas.nome,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              decoration: TextDecoration.none,
            )
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            musicas.artista,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              decoration: TextDecoration.none,
            )
          ),
        ],
      );
  }

  MusicBox(Map dict, int indice){
    this.dicionario = dict;
    this.indice = indice;
  }
}