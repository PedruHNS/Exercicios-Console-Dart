import 'package:calculadora/funcoes.dart';

void main() {
  String sair = dados(mensagem: "deseja finalizar o calculo").toLowerCase();
  if (sair == "sim") {
    print("finalizado");
    return;
  }
  if (sair == "nao") {
    check();
    main();
    return;
  }
  print("não entendi, digite novamente ");
  return;
}
