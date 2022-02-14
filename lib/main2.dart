// ESTE MAIN esta mais focado na parte de COLUMN

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    MeuApp(),
  );
}

class MeuApp extends StatelessWidget {
  //const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //o home é o esqueleto do APP
      home: Scaffold(
        //a cor de fundo do app é o LAANJA
        backgroundColor: Colors.deepOrange,
        //o q ta dentro do SAFE AREA, NÂO fica em baixo do RELOGIO ou SINAL da TORRE, etc...
        body: SafeArea(
            //dentro da SAFE AREA, nos criamos um COLUMN para por varios CONTAINERS
            child: Column(
          //alinhar no eixo HORIZONTAL, e .start, end, center, etc...
          //crossAxisAlignment: CrossAxisAlignment,

          //definir espaco entre CONTAINERS... .spaceBetween tbm e bom
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          //alinha os CONTAINER da COLUMN na parte BAIXO
          //mainAxisAlignment: MainAxisAlignment.end,

          //AREA INVISIVEL q a COLUNA ocupa
          //mainAxisSize: MainAxisSize.min,

          //container ficar de CIMA para BAIXO
          //verticalDirection: VerticalDirection.up,

          //dentro de CONTAINERS chamos um CHILDREN/FILHO e passamos VARIOS containers
          children: <Widget>[
            //criando um container, tamanho, cor, texto
            Container(
              height: 100.0,
              width: 100.0,
              //largura infinita
              // width: double.infinity,
              color: Colors.white,
              child: Text('container 1'),
            ),

            //ESPAÇO entre CONTAINER... 20 ALTURA, LARGURA 0
            SizedBox(
              height: 20.0,
            ),
            //criando um container... tamanho, cor texto
            Container(
              height: 100.0,
              width: 100.0,
              //largura infinita
              //width: double.infinity,
              color: Colors.blue,
              child: Text('container 2'),
            ),
            //ESPAÇO entre CONTAINER... 20 ALTURA, LARGURA 0
            SizedBox(
              height: 20.0,
            ),

            //criando um container... tamanho cor texto
            Container(
              height: 100.0,
              width: 100.0,
              //largura infinita
              //width: double.infinity,
              color: Colors.red,
              child: Text('container 3'),
            ),
          ],
        )),
      ),
    );
  }
}
