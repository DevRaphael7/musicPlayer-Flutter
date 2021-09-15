import 'package:flutter/material.dart';

class ListMusic extends StatelessWidget{

  String asset;
  String nome;
  String artista;

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.only(top: 5.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(asset)
                  )
                )
              ),
              Padding(padding:  EdgeInsets.only(right: 10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    textAlign: TextAlign.left,
                    style: TextStyle( 
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.white
                      ),
                  ),
                    
                  Text(
                    artista,
                    textAlign: TextAlign.left,
                    style: TextStyle( 
                      fontSize: 12.0,
                      decoration: TextDecoration.none,
                      color: Colors.white
                    ),
                  ),
                    
                ],
              )
            ],
        )
    );
  }

  ListMusic(String asset, String nome, String artista){
    this.asset = asset;
    this.nome = nome;
    this.artista = artista;
  }
}