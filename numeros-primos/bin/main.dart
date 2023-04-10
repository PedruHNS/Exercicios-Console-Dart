import 'package:main/funcoes.dart';

void main() {
  String sair = leitura(mensagem: "deseja finalizar o sistema?").toLowerCase();
  if (sair == "sim") {
    print("finalizado");
    return;
  }
  if (sair == "nao") {
    check();
    main();
    return;
  }
  print("digite novamente, não entendi");
  main();
  return;
}
