

/*
Neste Desafio você irá criar uma calculadora simples para calcular o IMC (Índice de Massa Corporal) de uma pessoa utilizando a linguagem Dart e o Flutter.

Checklist do Desafio
Criar classe Pessoa (Nome / Peso / Altura)​ ✅
Ler dados do terminal​ 
Tratar exceções​
Calcular IMC ​
Printar na tela o resultado do cálculo​
Testes​
*/

import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/calculadora_imc.dart';

void main(List<String> arguments) {
  String nome = lerDados('Nome: ');
  double peso = lerDados('Peso: ', conversor: 'double');
  double altura = lerDados('Altura: ', conversor: 'double');
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(classificacao(pessoa.getPeso(), pessoa.getAltura()));
}


