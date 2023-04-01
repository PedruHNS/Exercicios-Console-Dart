import 'dart:io';

String dados({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

class Calcule {
  final double num1;
  final String op;
  final double num2;

  Calcule({required this.num1, required this.op, required this.num2});

  void calculo() {
    switch (op) {
      case "+":
        final double resultado = num1 + num2;
        print("$num1 + $num2 = $resultado");
        break;
      case "-":
        final double resultado = num1 - num2;
        print("$num1 - $num2 = $resultado");
        break;
      case "*":
        final double resultado = num1 * num2;
        print("$num1 * $num2 = $resultado");
        break;
      case "/":
        final double resultado = num1 / num2;
        print("$num1 / $num2 = $resultado");
        break;
      default:
        print("erro");
        break;
    }
  }
}

void check (){
  final Calcule calculadora = Calcule(
    num1: double.parse(dados(mensagem: "digite o valor 1")),
    op: dados(mensagem: "digite a operação que seja fazer"),
    num2: double.parse(dados(mensagem: "digite o valor 2")),
  );

  calculadora.calculo();
}