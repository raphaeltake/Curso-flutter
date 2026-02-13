import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:test/test.dart';

void main() {
  group('calculadora imc', () {
    test('Saudável - Ana', () {
      final peso = 50.0;
      final altura = 1.6;
      final expected = 'IMC: 19.53 - Saudável';
      expect(classificacao(peso, altura), expected);
    });

    test('Sobrepeso - João', () {
      final peso = 80.0;
      final altura = 1.75;
      final expected = 'IMC: 26.12 - Sobrepeso';
      expect(classificacao(peso, altura), expected);
    });

    test('Magreza grave - Pedro', () {
      final peso = 45.0;
      final altura = 1.7;
      final expected = 'IMC: 15.57 - Magreza grave';
      expect(classificacao(peso, altura), expected);
    });

    test('Obesidade Grau III (mórbida) - Maria', () {
      final peso = 120.0;
      final altura = 1.7;
      final expected = 'IMC: 41.52 - Obesidade Grau III (mórbida)';
      expect(classificacao(peso, altura), expected);
    });
  });
}

