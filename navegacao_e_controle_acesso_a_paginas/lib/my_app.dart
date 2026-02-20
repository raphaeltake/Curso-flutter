import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:primeiroscomponentes/pages/main_page.dart';
import 'package:primeiroscomponentes/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFDD835),// cor primária
        ),
        textTheme: GoogleFonts.cairoTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFDD835),
          foregroundColor: Colors.white, // cor do texto e ícones
        ),
      ),
      home: const LoginPage(),
    );
  }
}