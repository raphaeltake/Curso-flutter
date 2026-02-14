import 'dart:math';

import 'package:flutter/material.dart';
import 'package:primeiroscomponentes/service/gerador_numero_aleatorio_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint("Somente exibido em debug 😎");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu App"),
      ),
      body: Center(
        child: Text(numeroGerado.toString()),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: (){
          setState(() {
            numeroGerado = GeradorNumeroAleatorioService.gerarNumeroAleatorio(1000);
          });
        },
      ),
    );
  }
}