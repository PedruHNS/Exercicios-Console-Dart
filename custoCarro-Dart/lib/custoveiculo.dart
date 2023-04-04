import 'dart:io';

String input({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

void custo() {
  final custo = double.parse(input(mensagem: "quanto custou o valor"));

  if (custo <= 12000.00) {
    final double distribuidor = (custo * 0.05);
    print(
        "custo: R\$ $custo + distribuidor: R\$ $distribuidor + imposto: isento = R\$ ${custo + distribuidor}");
    return;
  }
  if (custo <= 25000.00) {
    final double distribuidor = custo * 0.1;
    final double imposto = custo * 0.15;

    print(
        "custo: R\$ $custo + distribuidor: R\$ $distribuidor + imposto: R\$ $imposto = R\$ ${custo + distribuidor + imposto}");
    return;
  }
  final double distribuidor = custo * 0.15;
  final double imposto = custo * 0.2;

  print(
      "custo: R\$ $custo + distribuidor: R\$ $distribuidor + imposto: R\$ $imposto = R\$ ${custo + distribuidor + imposto}");
}
