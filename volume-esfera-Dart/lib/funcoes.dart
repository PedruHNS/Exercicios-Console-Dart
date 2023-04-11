import 'dart:io';

//função para entrada do usuário
String inputoutput({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}
//----------------------------------

//função para calcular o volume
double calcVolume(double r) {
  const pi = 3.14;
  return (4 * pi * (r * r * r)) / 3;
}
//---------------------------------

void calculo() {
  double volume = calcVolume(
      double.parse(inputoutput(mensagem: "digite o raio da esfera")));

  print(volume.toStringAsFixed(2));
}