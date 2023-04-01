import 'package:calculo_meta/funcoes.dart';

void main() {
  finalizar();
}

void finalizar() {
  String sair = input(messeger: "deseja finalizar a consulta?").toLowerCase();
  if (sair == "sim") {
    print("tchauuu!!!");
    return;
  }
  if (sair == "nao") {
    seletor();
    finalizar();
  }
  print("não entendi, digite novamente");
  finalizar();
}
