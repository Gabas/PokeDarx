import 'registravel.dart';


class Pokemon implements RegistravelNaPokedex 
{
  int numero;
  String nome;
  String tipo;
  int _nivel;
  int _hpAtual;
  int _hpMaximo;
  bool capturado;
  String? proximaEvolucao;
  int nivelEvolucao;

  int energia;

  bool visto = false;
  bool favorito = false;

  

  // Construtor principal
  Pokemon(
    this.numero,
    this.nome,
    this.tipo,
    int nivel,
    int hpAtual,
    int hpMaximo,
    this.capturado,
    this.proximaEvolucao,
    this.nivelEvolucao, {
    this.energia = 100,
}) : _nivel = nivel,
      _hpAtual = hpAtual,
      _hpMaximo = hpMaximo {
    // Validações do construtor
    if (_nivel < 1 || _nivel > 100) {
      throw ArgumentError('Erro: O nível deve começar entre 1 e 100.');
    }
    if (_hpMaximo <= 0) {
      throw ArgumentError('Erro: O HP Máximo deve ser maior que 0.');
    }
    if (_hpAtual < 0) {
      throw ArgumentError('Erro: O HP Atual não pode ser negativo.');
    }
    if (_hpAtual > _hpMaximo) {
      throw ArgumentError(
        'Erro: O HP Atual não pode ser maior que o HP Máximo.',
      );
    }
  }

  int get nivel => _nivel;
  int get hpAtual => _hpAtual;
  int get hpMaximo => _hpMaximo;

  void subirNivel(int quantidade) {
    if (quantidade < 0) {
      throw ArgumentError(
        'Erro: Valores negativos não são aceitos em subirNivel.',
      );
    }

    _nivel += quantidade;

    if (_nivel > 100) {
      _nivel = 100;
    }
    if (_nivel < 1) {
      _nivel = 1;
    }
  }

  void receberDano(int dano) {
    if (dano < 0) {
      throw ArgumentError(
        'Erro: Valores negativos não são aceitos em receberDano.',
      );
    }

    _hpAtual -= dano;

    if (_hpAtual < 0) {
      _hpAtual = 0;
    }
  }

  void curar(int valor) {
    if (valor < 0) {
      throw ArgumentError('Erro: Valores negativos não são aceitos em curar.');
    }

    _hpAtual += valor;

    if (_hpAtual > _hpMaximo) {
      _hpAtual = _hpMaximo;
    }
  }

  void evolui(){
    if(proximaEvolucao == null){
      print('$nome não pode evoluir.');
      return;
    }
    if(_nivel < nivelEvolucao){
      print('$nome ainda não atingiu o nivel necessario para poder evoluir');
      return;
    }
    print('$nome está evoluindo para a $proximaEvolucao!');

    nome = proximaEvolucao!;
    proximaEvolucao = null;

    _hpMaximo += 20;
    _hpAtual = _hpMaximo;
  }

  int calcularAtaqueBase() {
    return _nivel;
  }


  



  @override
  void marcarComoVisto() {
    visto = true;
    print('$nome foi marcado como visto');
  }
  
  @override
  void marcarComoCapturado() {
    capturado = true;
    visto = true;
    print('$nome foi capturado e marcado como visto');
  }
  
  @override
  void favoritar() {
    if (capturado == false) {
      print('Não é possível favoritar $nome sem capturar primeiro');
      return;
    }
    else {
      favorito = true;
      print('$nome foi favoritado');
    }
  }
  
  @override
  void desfavoritar() {
    favorito = false;
    print('$nome foi desfavoritado');
  }



  
  void exibirFicha() {
    print('--- Ficha do Pokémon ---');
    print('Número: #$numero');
    print('Nome: $nome');
    print('Tipo: $tipo');
    print('Nível: $nivel');
    print('HP: $hpAtual / $hpMaximo');
    print('Energia: $energia');
    print('Capturado: $capturado');
    print('Proxima Evolução: ${proximaEvolucao ?? "Nenhuma"}');
    print('Nivel para Evoluir: $nivelEvolucao');
    print('------------------------\n');
  }
}
