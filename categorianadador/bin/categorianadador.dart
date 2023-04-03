import 'package:categorianadador/funcoes.dart';

void main() {
  String sair = leitura(mensagem: "deseja finalizar o sistema?").toLowerCase();
  if (sair == "sim") {
    print("sistema finalizado");
    return;
  }
  if (sair == "nao") {
    check();
    main();
    return;
  }
  print("não entendi, digite novamente");
  main();
  return;
}

void check() {
  Aluno aluno = Aluno.nomeado(
      nome: leitura(mensagem: "nome do aluno").toLowerCase(),
      idade: int.parse(leitura(mensagem: "idade do aluno")));

  aluno.faixaetaria();
}
