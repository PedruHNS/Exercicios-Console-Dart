class Atleta {
  String nome;
  int idade;
  double altura;
  double peso;

  Atleta.nomeado({
    required this.nome,
    required this.idade,
    required this.altura,
    required this.peso,
  });

  void imc() {
    double imc = peso / (altura * altura);
    String status;
    if (imc < 18.5) {
      status = "baixo peso";
    } else if (imc <= 24.99) {
      status = "normal";
    } else if (imc <= 29.99) {
      status = "sobrepeso";
    } else {
      status = "obesidade";
    }

    print("nome: $nome\n"
        "indice de massa corporal: ${imc.toStringAsFixed(2)} ($status)");
  }
}
