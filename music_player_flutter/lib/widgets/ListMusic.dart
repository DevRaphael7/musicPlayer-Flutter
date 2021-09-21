import 'package:flutter/material.dart';

class ListMusic extends StatelessWidget{

  String asset;
  String nome;
  String artista;

  @override 
  Widget build(BuildContext context){
    return MaterialButton(
      child: Padding(
        padding: EdgeInsets.only(top: 5.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: asset == "" || asset == null ? Icon(Icons.person, size: 50, color: Colors.white,) : new Image.asset(asset, height: 200),
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
      ),
    );
  }

  ListMusic( {String asset="", String nome=' ', String artista = ' '} ) {
    this.asset = asset;
    this.nome = nome;
    this.artista = artista;
  }
}