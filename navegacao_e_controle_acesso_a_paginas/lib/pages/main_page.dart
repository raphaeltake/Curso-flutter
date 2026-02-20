import 'dart:ffi';

import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Main Page"),
          ),
          drawer: Drawer(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: InkWell(
                      child: Text("Dados cadastrais"),
                      onTap: (){},
                    ),
                  ),
                  Divider(),
                  // SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: InkWell(
                      child: Text("Configuraçṍes"),
                      onTap: (){},
                    ),
                  ),
                  Divider(),
                  // SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: InkWell(
                      child: Text("Termos de uso e privacidade"),
                      onTap: (){},
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        )
        );
  }
}