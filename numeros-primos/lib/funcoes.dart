import 'dart:io';

String leitura({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

void check() {
  final numero = int.parse(
    leitura(mensagem: "digite o numero inteiro positivo"),
  );

  int divisorDeNumero = 0;

  for (int contador = 1; contador <= numero; contador++) {
    if (numero % contador == 0) {
      divisorDeNumero++;
    }
  }
  print((divisorDeNumero == 2) ? "primo" : "não é primo");
}
