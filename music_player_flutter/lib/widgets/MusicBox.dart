import 'package:flutter/material.dart';
import 'package:music_player_flutter/components/Functions.dart';

class MusicBox extends StatelessWidget{

  String nome;
  String artista;
  String asset;
  String rota;
  int indice;

  @override
  Widget build(BuildContext context){
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
                      image: AssetImage(asset)
                    )
                  )
                ),
              ),
              onPressed: () {
                passarParaOutraTela(context, rota, indice);
              },
            ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            nome,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              decoration: TextDecoration.none,
            )
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Text(
            artista,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.white,
              decoration: TextDecoration.none,
            )
          ),
        ],
      );
  }

  MusicBox(String nome, String artista, String asset, int indice){
    this.nome = nome;
    this.artista = artista;
    this.asset = asset;
    this.rota = "/MusicPlayer";
    this.indice = indice;
  }
}