import 'dart:io';
import 'package:calculo_imc/classe.dart';

String input({required String mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

void imc() {
  final Atleta pessoa = Atleta.nomeado(
    nome: input(mensagem: "Digite o nome"),
    idade: int.parse(input(mensagem: "digite a idade")),
    altura: double.parse(input(mensagem: "digite a altura")),
    peso: double.parse(input(mensagem: "digite o peso")),
  );

  pessoa.imc();
}

void finalizar() {
  String sair = input(mensagem: "Deseja finalizar?").toLowerCase();
  if (sair == "sim") {
    print("finalizamos");
    return;
  }
  if (sair == "nao") {
    imc();
    finalizar();
    return;
  }
  print("não entendi, digite novamente");
  finalizar();
}
