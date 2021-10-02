import 'package:flutter/material.dart';
import 'package:music_player_flutter/components/Functions.dart';
import 'package:music_player_flutter/components/Musicas.dart';
import 'package:music_player_flutter/widgets/MusicBox.dart';
import 'package:music_player_flutter/widgets/Text.dart';

class Musics extends StatefulWidget{

  @override 
  State createState() => new MusicsState();
}
class MusicsState extends State<Musics>{

  IconData iconeTeste = Icons.favorite_border;
  String nomeBanner = "Rock & Roll Part 2";

  @override 
  Widget build(BuildContext context){

    setState(() {
      iconeTeste = mudancaDeIcone(iconeTeste, favoritas, nomeBanner);
    });

    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [ 
                Color(0xff6633cc),
                Color(0xff5925e5)
              ]
            )
          ),
      child: SingleChildScrollView(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30.0)),
              Column(
                children: [
                  Container(
                    width: 500,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        image: AssetImage("assets/joker_img.png"),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.white,
                          size: 60.0,
                        )
                      )
                    )
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(nomeBanner, style: TextStyle(color: Colors.white, fontSize: 30)),
                          Spacer(),
                          IconButton(
                            icon: Icon(iconeTeste, size: 40, color: Colors.white),
                            onPressed: () {
                              setState(() {
                                List values = ["Rock & Roll Part 2", "Quadrinhos", "Gary Glitter", "assets/joker.jpg", "Howls Moving Castle.mp3"];
                                adicionarAsFavoritas(favoritas, values);
                              });
                            },
                            )
                        ],
                      )
                  ),
                ]
              ),
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: TextForHomePage("Recomendadas para você")
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Container(
                height: 160,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) => MusicBox(musicas, index), 
                  separatorBuilder: (context, _) => Spacer(), 
                  itemCount: tamanho(musicas['Nome'])
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 5.0)),
              Align(
                alignment: Alignment.centerLeft,
                child: TextForHomePage("Favoritas")
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Container(
                height: 200,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {

                    if (tamanho(favoritas['Nome']) == 0 || tamanho(favoritas['Nome']) == null){
                      return Text("Sem músicas favoritas! :(", style: TextStyle(color: Colors.white, fontSize: 20.0,));
                    };

                    print(favoritas);
                    int indice = musicas['Nome'].indexOf(favoritas['Nome'][index]);
                    return MusicBox(musicas, indice);
                  },  
                  separatorBuilder: (context, _) => Spacer(), 
                  itemCount: tamanho(favoritas['Nome']) == 0  ? 1 : tamanho(favoritas['Nome'])
                ),
              )
            ]
          )
      )
    );
  }
}