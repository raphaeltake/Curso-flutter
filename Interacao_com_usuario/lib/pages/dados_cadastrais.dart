import 'package:flutter/material.dart';
import 'package:primeiroscomponentes/shared/widgets/text_label.dart';

class DadosCadastrais extends StatefulWidget {
  const DadosCadastrais({super.key});

  @override
  State<DadosCadastrais> createState() => _DadosCadastraisState();
}

class _DadosCadastraisState extends State<DadosCadastrais> {
  TextEditingController nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  DateTime? dataNascimento;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meus dados")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLabel(texto: "Nome"),
            TextField(
              controller: nomeController,
            ),
            SizedBox(height: 10),
            TextLabel(texto: "Data de nascimento"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var data = await showDatePicker(context: context,
                    initialDate: DateTime(2000,1,1),
                    firstDate: DateTime(1900,5,20),
                    lastDate: DateTime.now());
                if (data != null){
                  dataNascimentoController.text = data.toString();
                  dataNascimento = data;
                }
                debugPrint(dataNascimentoController.text);
              },
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              width: double.infinity,
              child: TextButton(onPressed: (){
                debugPrint(nomeController.text);
                debugPrint(dataNascimento.toString());
              },
                  child: Text("Salvar", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,))
              ),
            )
          ],
        ),
      ),
    );
  }
}
