import 'package:flutter/material.dart';

void passarParaOutraTela(BuildContext context, String rota, int indice, Map dicionario){
      Navigator.pushReplacementNamed(context, rota, arguments: { 
          "indice" : indice,
          "dict": dicionario
      });
}

// Essa função me retirna o tamanho da lista do dicionário
int tamanho(List lin){
  int tam = 0;
  for(int i = 0; i < lin.length; i++){
    tam++;
  }

  return tam++;
}

// Essa função é para adicionar músicas as favoritas
void adicionarAsFavoritas(Map dict, List add){

  int ind = 0;
  
  for (var i in dict.keys){
    if (!dict[i].contains(add[ind])){
      dict[i].add(add[ind]);
      ind++;
    }
  }
}

// Muda o ícone de FAVORITOS
IconData mudancaDeIcone (IconData icone, Map dict, String value){

  if (dict['Nome'].contains(value)){
    icone = Icons.favorite;
  }else{
    icone = Icons.favorite_border;
  }

  return icone;
}