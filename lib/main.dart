// ESTE MAIN esta mais focado na parte de ROW

import 'package:flutter/material.dart';

//criando a funcao principal q é a funcao main...
void main() {
//ela vai chamar a funcao MeuApp que é ali q o APP vai iniciar
  runApp(
    //chamando a funcao MeuApp
    MeuApp(),
  );
}

//criandoa  classe/funcao meuApp
class MeuApp extends StatelessWidget {
  //const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //definindo o esqueleto do app
      home: Scaffold(
        //cor de fundo do app
        backgroundColor: Colors.deepOrange,
        //SAFE AREA diz q NADA fica em BAIXO do RELOGIO ou SINAL DE TORRE, ETC...
        body: SafeArea(
            //criando uma lina LINHA de CONTAINERS... ROW
            child: Row(
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

          //dentro do ROW criamos o nosso primeiro FILHO/CHILDREN (lista de filhos) q é um Container
          children: <Widget>[
            //criando o container... tamanho, cor, texto, etc...
            Container(
              height: 100.0,
              width: 100.0,
              //largura infinita
              // width: double.infinity,
              color: Colors.white,
              child: Text('container 1'),
            ),
            //ESPAÇO entre CONTAINER... 20 LARGURA, ALTURA 0
            SizedBox(
              width: 20.0,
            ),

            //criando o segundo container
            Container(
              height: 100.0,
              width: 100.0,
              //largura infinita
              //width: double.infinity,
              color: Colors.blue,
              child: Text('container 2'),
            ),
            //ESPAÇO entre CONTAINER... 20 LARGURA, ALTURA 0
            SizedBox(
              width: 20.0,
            ),

            //criando o terceiro container
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
