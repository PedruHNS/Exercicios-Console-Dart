class Pessoa {
  String _nome = "";
  String _sobrenome = "";
  int _idade = 0;
  double _altura = 0.00;

  get exibirNome => _nome;
  get exibirSobrenome => _sobrenome;
  get exibirIdade => _idade;
  get exibirAltura => _altura;

  set inserirNomeCompleto(String nomeCompleto) {
    List<String> nomeSobrenome = nomeCompleto.split(" ");
    _nome = nomeSobrenome[0];
    _sobrenome = nomeSobrenome[1];
  }

  set inserirIdade(int idade) {
    _idade = (idade < 0) ? 0 : idade;
  }

  set inserirAltura(double altura) => _altura = altura;

  exibirDados() {
    print("nome completo: $_nome $_sobrenome");
    print("idade: $_idade anos");
    print("altura: $_altura m");
  }
}
