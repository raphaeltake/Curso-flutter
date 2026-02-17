import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( //Respeita a barra de status do aplicativo
        child: Scaffold(
          // backgroundColor: Color(0xff000000),
          backgroundColor: Color.fromARGB(255, 236, 241, 243),
          body: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 70,
                ),

                // Container(
                //   margin: EdgeInsets.only(top: 50),
                //   width: 150,
                //   height: 150,
                //   color: Colors.amber,
                //   alignment: Alignment.center,
                //   child: Icon(
                //     Icons.person,
                //     size: 150,
                //     color: Colors.red,
                //   ),
                // ),

                Icon(
                  Icons.person,
                  size: 150,
                  color: Colors.blue,
                ),

                SizedBox(
                  height: 50,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  // color: Colors.green,
                  height: 30,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text("Informe seu email: ")
                      ),

                      // SizedBox(
                      //   height: 10,
                      // ),

                      Expanded(
                          flex: 3,
                          child: Text("E-mail")
                      ),
                    ],
                  ),
                ),

                // SizedBox(
                //   height: 10,
                // ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  // color: Colors.green,
                  height: 30,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child:
                          Text("Informe a senha: ")
                      ),

                      // SizedBox(
                      //   height: 10,
                      // ),

                      Expanded(
                          flex: 3,
                          child: Text("Senha: ")
                      ),
                    ],
                  ),
                ),

                Expanded(child: Container()),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  color: Colors.green,
                  height: 30,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text("Login"),
                ),

                SizedBox(
                  height: 20,
                ),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("Cadastro"),
                ),

                SizedBox(
                  height: 10,
                ),

              ],
            ),
          )
        ),
    );
  }
}
