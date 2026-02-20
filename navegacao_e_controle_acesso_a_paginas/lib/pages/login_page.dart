import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController senhaController = TextEditingController(text: "");
  bool isObscureText = true;



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
                        // onChanged: (value){
                        //   email = value;
                        // },
                        // onChanged: (value){
                        //   debugPrint(value);
                        // },
                        controller: emailController,
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

                    Container(
                        margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                      // color: Colors.green,
                      height: 30,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: TextField(
                        obscureText: isObscureText,
                        // onChanged: (value){
                        //   senha = value;
                        // },
                        controller: senhaController,
                        // onChanged: (value){
                        //   debugPrint(value);
                        // },
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

                          //Forma 01:
                          suffixIcon: InkWell(
                            onTap: (){
                              isObscureText = !isObscureText;
                              setState(() {});
                            },
                            child: Icon(
                              isObscureText ?
                              Icons.visibility_off:
                              Icons.visibility,
                              color: Colors.deepPurple,
                            ),
                          )

                            //Forma 02:
                            // suffixIcon: GestureDetector(
                            //   onTap: (){
                            //     isObscureText = !isObscureText;
                            //     setState(() {});
                            //   },
                            //   child: Icon(
                            //     isObscureText ?
                            //     Icons.visibility_off:
                            //     Icons.visibility,
                            //     color: Colors.deepPurple,
                            //   ),
                            // )

                        ),
                      )
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: (){
                            if (emailController.text.trim() == "email@email.com" && senhaController.text.trim() == "teste"){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Login realizado"),
                                    backgroundColor: Colors.green,
                                    duration: Duration(seconds: 3),
                                  ));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("Login falhou"),
                                    backgroundColor: Colors.red,
                                    duration: Duration(seconds: 3),
                                  )
                              );
                              debugPrint("Login falhou");
                            }
                        },
                          // style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                          style: TextButton.styleFrom(backgroundColor: Colors.deepPurple, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                          child: Text("Entrar",
                            style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),),
                        ),
                      ),
                    ),

                    Expanded(child: Container()),

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
