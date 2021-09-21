import 'package:flutter/material.dart';

class CategoryFilm extends StatefulWidget{

  Color cor;
  String asset;
  String genero;

  @override 
  State createState() => CategoryFilmState(cor, asset, genero);

  CategoryFilm(Color cor,String asset, String genero){
    this.cor = cor;
    this.asset = asset;
    this.genero = genero;
  }
}

class CategoryFilmState extends State<CategoryFilm>{

  Color cor;
  String asset;
  String genero;

  @override 
  Widget build(BuildContext context){
    return Container(
        padding: EdgeInsets.all(12),
        width: 600,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          image: DecorationImage(
            image: AssetImage(asset),
            scale: 1.0,
            colorFilter: const ColorFilter.mode(
              Color(0xff531b53), 
              BlendMode.color
            )
          ),
        ),
        child: Text(
          genero,
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold
          ),
          ),
      );
  }

  CategoryFilmState(Color cor,String asset, String genero){
    this.cor = cor;
    this.asset = asset;
    this.genero = genero;
  }
}