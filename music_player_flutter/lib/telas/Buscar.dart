import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:music_player_flutter/widgets/Category%20Film.dart';
import 'package:music_player_flutter/widgets/Text.dart';
import 'package:music_player_flutter/components/generos.dart';

class Buscar extends StatelessWidget{

  @override 
  Widget build(BuildContext context){
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: ScrollPhysics(),
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextForHomePage("Procurar"),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                prefixIcon: Icon(
                  Icons.search_sharp,
                  color: Colors.black,
                ),
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                hintText: "Buscar música"
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ListView.separated(
                shrinkWrap: true,
                itemCount: generos.length + 1,
                itemBuilder: (context , int index) => CategoryFilm(Color(0xff531b53), generos['Asset'][index], generos['Genre'][index]),
                separatorBuilder: (context, _) => Padding(padding: EdgeInsets.only(top: 10)),
              ),
            ],
          )
      )
    );
  }
}