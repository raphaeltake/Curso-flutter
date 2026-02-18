import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:primeiroscomponentes/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Somente exibido em debug 😎");
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App",
          //style: GoogleFonts.pacifico(),
        ),
      ),

      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   // crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Center(
      //       child:
      //       Text("Foi clicado $quantidadeCliques vezes",
      //         // style: GoogleFonts.acme(fontSize: 20),
      //       ),
      //     ),
      //
      //     Center(
      //       child:
      //       Text("Número aleatório: $numeroGerado",
      //         // style: GoogleFonts.acme(fontSize: 20),
      //       ),
      //     ),
      //
      //   ],
      // ),

      body: Container(
        // margin: EdgeInsets.fromLTRB(16, 16, 8, 8),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // color: Colors.amber,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              height: 200,
              width: 200,
              color: Colors.cyan,
              child:
                Text("Ações do Usuário",
              ),
            ),

            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
                child:
                Text("Foi clicado $quantidadeCliques vezes",
                  // style: GoogleFonts.acme(fontSize: 20),
                ),
              ),
            ),

            Container(
              color: Colors.indigo,
              child:
              Text("Número aleatório: $numeroGerado",
                // style: GoogleFonts.acme(fontSize: 20),
              ),
            ),

            Expanded(
                child:
                Container(
                  // color: Colors.yellow,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.amberAccent,
                          child:
                          Text("10"),
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.red,
                          child: Text("20"),
                        ),
                      ),

                      Expanded(
                        child: Container(
                          color: Colors.blue,
                          child: Text("30"),
                        ),

                      ),
                    ],
                  ),
                )
            ),

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: (){
          setState(() {
            quantidadeCliques = quantidadeCliques + 1;
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
          });
        },
      ),
    );
  }
}