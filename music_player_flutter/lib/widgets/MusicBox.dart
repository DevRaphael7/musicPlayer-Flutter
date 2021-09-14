import 'package:flutter/material.dart';

class MusicBox extends StatelessWidget{

  String nome;
  String artista;
  String asset;

  @override
  Widget build(BuildContext context){
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          MaterialButton(
            child: Align(
              alignment: Alignment.centerLeft,
              child: ClipRRect(
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)
                    ),
                    image: DecorationImage(
                      image: AssetImage(asset)
                    )
                  )
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              nome,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none,
            )
          ),
          ),
          Padding(padding: EdgeInsets.only(top: 2)),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              artista,
              style: TextStyle(
                fontSize: 8.0,
                color: Colors.white,
                decoration: TextDecoration.none,
            )
          ),
          ),
        ],
      ),
    );
  }

  MusicBox(String nome, String artista, String asset){
    this.nome = nome;
    this.artista = artista;
    this.asset = asset;
  }
}