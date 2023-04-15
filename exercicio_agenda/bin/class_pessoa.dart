// ignore_for_file: public_member_api_docs, sort_constructors_first

class Pessoa {
  String nome;
  int idade;
  double altura;

  Pessoa({
    required this.nome,
    required this.idade,
    required this.altura,
  });
}

class Agenda {
  final Map<int, Pessoa> _pessoas = {};

  void armazenarPessoa(int seletor, String nome, int idade, altura) {
    if (_pessoas.length < 10) {
      _pessoas[seletor] = Pessoa(nome: nome, idade: idade, altura: altura);
    } else {
      print("lista cheia");
    }
  }

  void exibirAgenda() {
    _pessoas.forEach((key, value) {
      print(
        "$key : nome - ${value.nome} idade - ${value.idade} altura - ${value.altura}",
      );
    });
  }

  void buscarPessoa(int seletor) {
    exibirAgenda();
    print(_pessoas[seletor]);
  }

  void removerPessoa(int seletor) {
    _pessoas.remove(seletor);

    exibirAgenda();
  }
}

void main() {
  Agenda agendaAlunos = Agenda();

  agendaAlunos.armazenarPessoa(1, "Pedro", 23, 1.66);
  agendaAlunos.armazenarPessoa(2, "caio", 23, 1.66);
  agendaAlunos.armazenarPessoa(3, "selma", 23, 1.66);
  agendaAlunos.armazenarPessoa(4, "henrique", 23, 1.66);
  agendaAlunos.armazenarPessoa(5, "nascimento", 23, 1.66);
  agendaAlunos.armazenarPessoa(6, "siqueira", 23, 1.66);
  agendaAlunos.armazenarPessoa(7, "joao", 23, 1.66);
  agendaAlunos.armazenarPessoa(8, "marcos", 23, 1.66);
  agendaAlunos.armazenarPessoa(9, "andré", 23, 1.66);
  agendaAlunos.armazenarPessoa(10, "carlos", 23, 1.66);
  agendaAlunos.armazenarPessoa(11, "joao", 23, 1.66);

  print("removeu");
  agendaAlunos.removerPessoa(10);

  print("buscando pessoa");

  agendaAlunos.buscarPessoa(3);
}
