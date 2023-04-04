import 'package:custoveiculo/custoveiculo.dart';

void main() {
  String finalizar = input(
    mensagem: "deseja calcular a comissão?",
  ).toLowerCase();
  if (finalizar == "sim") {
    custo();
    main();
    return;
  }
  if (finalizar == "nao") {
    print("finalizado");
    return;
  }
  print("erro!!!");
  main();
  return;
}