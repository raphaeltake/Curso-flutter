import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFDD835), // cor primária
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFFDD835),
          foregroundColor: Colors.white, // cor do texto e ícones
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var numeroGerado = 0;

  int _gerarNumeroAleatorio(){
    Random numeroAleatorio = Random();
    return numeroAleatorio.nextInt(1000);
  }

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
              numeroGerado = _gerarNumeroAleatorio();
            });
          },
        ),
    );
  }
}

