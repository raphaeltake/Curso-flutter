import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:primeiroscomponentes/pages/dados_cadastrais.dart';
import 'package:primeiroscomponentes/pages/pagina1.dart';
import 'package:primeiroscomponentes/pages/pagina2.dart';
import 'package:primeiroscomponentes/pages/pagina3.dart';

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
                      onTap: (){
                        Navigator.pop(context); //Desabilita o drawer ao voltar da página DadosCadastrais.
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DadosCadastrais(texto: "Meus dados", dados: ["Nome", "Email", "Telefone", "CPF"],))
                        );
                      },
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

          body: Column(
            children: [
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Pagina1Page(),
                    Pagina2Page(),
                    Pagina3Page(),
                  ],
                ),
              ),
            ],
          ),

        )
        );
  }
}