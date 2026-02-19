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
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
              maxWidth: MediaQuery.of(context).size.width,
              ),
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

                    Row(
                      children: [
                        Expanded(
                            child: Container()),
                        Expanded(
                          flex: 7,
                          child: Image.network("https://c5gwmsmjx1.execute-api.us-east-1.amazonaws.com/prod/dados_processo_seletivo/logo_empresa/119818/LOGO-DIO-COLOR.png_name_20221031-2831-ekn5hh.png",
                            // height: 125,
                            // width: 100,
                          ),
                        ),
                        Expanded(child: Container()),
                      ],
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Text("Já tem cadastro?", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),

                    SizedBox(
                      height: 10,
                    ),

                    Text("Faça seu login e make the change_", style: TextStyle(fontSize: 16, color: Colors.white)),

                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      // color: Colors.green,
                      height: 30,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          prefixIcon: Icon(Icons.person, color: Colors.deepPurple,),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    // SizedBox(
                    //   height: 10,
                    // ),


                    Container(
                        margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      // color: Colors.green,
                      height: 30,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          // contentPadding: EdgeInsets.only(top: 0),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple),
                          ),
                          prefixIcon: Icon(Icons.lock, color: Colors.deepPurple,),
                          hintText: "Senha",
                          hintStyle: TextStyle(color: Colors.white),
                          suffixIcon: Icon(Icons.visibility, color: Colors.deepPurple,)
                        ),
                      )
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      // color: Colors.green,
                      // height: 30,
                      // width: double.infinity,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(onPressed: (){},
                          // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                          style: TextButton.styleFrom(backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          child: Text("Entrar",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
                        ),
                      ),
                    ),

                    Expanded(child: Container()),

                    // SizedBox(
                    //   height: 20,
                    // ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("Esqueci minha senha", style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.w400),),
                    ),

                    SizedBox(
                      height: 10,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      height: 30,
                      alignment: Alignment.center,
                      child: Text("Criar conta", style: TextStyle(color: Colors.green, fontSize: 16, fontWeight: FontWeight.w400,)),
                    ),

                    Expanded(child: Container()),

                  ],
                ),
            ),
          ),
          )
    );
  }
}
