class Pokemon {
  int numero;
  String nome;
  String tipo;
  int nivel;
  int hpAtual;
  int hpMaximo;
  bool capturado;

  // Construtor principal
  Pokemon(
    this.numero,
    this.nome,
    this.tipo,
    this.nivel,
    this.hpAtual,
    this.hpMaximo,
    this.capturado,
  ) {
    // Validações do construtor
    if (nivel < 1 || nivel > 100) {
      throw ArgumentError('Erro: O nível deve começar entre 1 e 100.');
    }
    if (hpMaximo <= 0) {
      throw ArgumentError('Erro: O HP Máximo deve ser maior que 0.');
    }
    if (hpAtual > hpMaximo) {
      throw ArgumentError(
        'Erro: O HP Atual não pode ser maior que o HP Máximo.',
      );
    }
  }

  void exibirFicha() {
    print('--- Ficha do Pokémon ---');
    print('Número: #$numero');
    print('Nome: $nome');
    print('Tipo: $tipo');
    print('Nível: $nivel');
    print('HP: $hpAtual / $hpMaximo');
    print('Capturado: $capturado');
    print('------------------------\n');
  }
}
