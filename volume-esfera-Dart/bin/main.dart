import 'package:main/funcoes.dart';

void main() {
  String sair = inputoutput(mensagem: "deseja finalizar o calculo?");
  if (sair == "sim") {
    print("saiu");
    return;
  }
  if (sair == "nao") {
    calculo();
    main();
    return;
  }
  print("não entendi digite novamente");
  main();
}


