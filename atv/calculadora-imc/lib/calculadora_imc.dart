import 'dart:convert';
import 'dart:io';

dynamic lerDados(String mensagem, {String conversor = ""}){
  print(mensagem);
  dynamic dado = stdin.readLineSync(encoding: utf8).toString();
  if (conversor == 'double'){
    try{
      dado = double.parse(dado);
      if (dado <= 0) {
        throw FormatException('O valor deve ser maior que zero.');
      }
    } catch(e) {
      print("Valor incorreto: $e");
      dado = lerDados(mensagem, conversor: conversor);
    }
  }
  return dado;
}

double calcularIMC(double peso, double altura){
  return double.parse((peso / (altura * altura)).toStringAsFixed(2));
}

String classificacao(double peso, double altura){
  double imc = calcularIMC(peso, altura);
  String resultado;
  if (imc < 16) {
    resultado = 'Magreza grave';
  } else if (imc < 17) {
    resultado = 'Magreza moderada';
  } else if (imc < 18.5) {
    resultado = 'Magreza leve';
  } else if (imc < 25) {
    resultado = 'Saudável';
  } else if (imc < 30) {
    resultado = 'Sobrepeso';
  } else if (imc < 35) {
    resultado = 'Obesidade Grau I';
  } else if (imc < 40) {
    resultado = 'Obesidade Grau II (severa)';
  } else {
    resultado = 'Obesidade Grau III (mórbida)';
  }
  return 'IMC: $imc - $resultado';
}


