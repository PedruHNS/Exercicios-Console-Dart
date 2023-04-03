import 'dart:io';

String leitura({required mensagem}) {
  String? input;
  while (input == null) {
    print(mensagem);
    input = stdin.readLineSync();
  }
  return input;
}

// Idade	Categoria
// 5 a 7 anos	Infantil A
// 8 a 10 anos	Infantil B
// 11-13 anos	Juvenil A
// 14-17 anos	Juvenil B
// Maiores de 18 anos (inclusive)	Adulto


class Aluno {
  String nome;
  int idade;

  Aluno.nomeado({required this.nome, required this.idade});

  void faixaetaria() {
    if (idade <=5 ) {
      print("categoria infantil A");
    } else if (idade <= 10) {
      print("categoria infantil B");
    } else if (idade <= 13) {
      print("categoria juvenil A");
    } else if (idade <= 17) {
      print("categoria juvenil B");
    }else {
      print("categoria adulto");
    }
  }
}
