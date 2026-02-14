import 'package:flutter/material.dart';
import 'package:primeiroscomponentes/pages/home_page.dart';

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