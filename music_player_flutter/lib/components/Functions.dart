import 'package:flutter/material.dart';

void passarParaOutraTela(BuildContext context, String rota, int indice){
      Navigator.pushReplacementNamed(context, rota, arguments: { 
          "indice" : indice
      });
}
