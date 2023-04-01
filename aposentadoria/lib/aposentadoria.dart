import 'dart:io';

String entrada({required String mensagem}) {
  String? input;

  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

class Pessoa {
  String nome;
  int idade;
  int trabalho;

  Pessoa(this.nome, this.idade, this.trabalho);

  String aposentadoria() {
    if (idade >= 60 && trabalho >= 25) {
      return "Parabêns $nome, você esta autorizado a se aposentar";
    }
    if (trabalho >= 30) {
      return "Parabêns $nome, você esta autorizado a se aposentar aproveite";
    }
    if (idade >= 65) {
      return "Parabêns $nome, sua aposentadoria esta autorizada";
    }
    return "não pode se aposentar";
  }
}

void check() {
  final String nomePessoa = entrada(mensagem: "qual seu nome?");
  final idadePessoa = int.parse(entrada(mensagem: "qual sua idade?"));
  final anoTrab = int.parse(entrada(mensagem: "quantos anos trabalhados"));

  Pessoa usuario = Pessoa(nomePessoa, idadePessoa, anoTrab);
  print(usuario.aposentadoria());
}

void checkUser() {
  String sair = entrada(mensagem: "efetuar consulta?").toLowerCase();
  if (sair == "nao") {
    print("finalizado");
    return;
  }
  if (sair == "sim") {
    check();
    checkUser();
    return;
  }
  print("Não entendi digite novamente");
  checkUser();
}
