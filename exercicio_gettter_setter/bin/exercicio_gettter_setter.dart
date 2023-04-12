import 'package:exercicio_gettter_setter/exercicio_gettter_setter.dart';

void main() {
  Pessoa aluno = Pessoa();

  aluno.inserirNomeCompleto = "Pedro Henrique";
  aluno.inserirIdade = 23;
  aluno.inserirAltura = 1.66;

  print(
    "${aluno.exibirNome} \n"
    "${aluno.exibirSobrenome}\n"
    "${aluno.exibirIdade} anos\n"
    "${aluno.exibirAltura} m\n",
  );

  aluno.exibirDados();
}
