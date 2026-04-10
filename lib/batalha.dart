import 'pokemon.dart';

class PokemonFogo extends Pokemon {
    PokemonFogo(int numero, String nome, int nivel, int hpAtual, int hpMaximo, bool capturado, String? proximaEvolucao, int nivelEvolucao, {int energia = 100})
      : super(numero, nome, 'Fogo', nivel, hpAtual, hpMaximo, capturado, proximaEvolucao, nivelEvolucao, energia: energia);

  @override
  int calcularAtaqueBase() {
    return nivel * 3;
  }

  @override
  void exibirFicha() {
    print('\n[Categoria: Pokémon de Fogo]');
    super.exibirFicha();
  }
}

class PokemonAgua extends Pokemon {
  PokemonAgua(int numero, String nome, int nivel, int hpAtual, int hpMaximo, bool capturado, String? proximaEvolucao, int nivelEvolucao, {int energia = 100})
      : super(numero, nome, 'Agua', nivel, hpAtual, hpMaximo, capturado, proximaEvolucao, nivelEvolucao, energia: energia);

  @override
  int calcularAtaqueBase() {
    return (nivel * 2) + 10;
  }

  @override
  void exibirFicha() {
    print('\n[Categoria: Pokémon de Água]');
    super.exibirFicha();
  }
}

class PokemonEletrico extends Pokemon {
  PokemonEletrico(int numero, String nome, int nivel, int hpAtual, int hpMaximo, bool capturado, String? proximaEvolucao, int nivelEvolucao, {int energia = 100})
      : super(numero, nome, 'Eletrico', nivel, hpAtual, hpMaximo, capturado, proximaEvolucao, nivelEvolucao, energia: energia);

  @override
  int calcularAtaqueBase() {
    return (nivel * 2) + 15;
  }

  @override
  void exibirFicha() {
    print('\n[Categoria: Pokémon Elétrico]');
    super.exibirFicha();
  }
}

abstract class Habilidade {
    String nome;
    int custoEnergia;

    Habilidade(this.nome, this.custoEnergia);

    void usar(Pokemon usuario, Pokemon alvo);
}

class Thunderbolt extends Habilidade {
  Thunderbolt() : super('Thunderbolt', 15);

  @override
  void usar(Pokemon usuario, Pokemon alvo) {
    if (usuario.energia >= custoEnergia) {
      usuario.energia -= custoEnergia;
      int dano = usuario.calcularAtaqueBase() + 5;
      alvo.receberDano(dano);
      print('${usuario.nome} usou $nome! Causou $dano de dano em ${alvo.nome}.');
    } else {
      print('${usuario.nome} tentou usar $nome, mas não tem energia suficiente!');
    }
  }
}

class HydroPump extends Habilidade {
  HydroPump() : super('Hydro Pump', 5);

  @override
  void usar(Pokemon usuario, Pokemon alvo) {
    if (usuario.energia >= custoEnergia) {
      usuario.energia -= custoEnergia;
      int dano = usuario.calcularAtaqueBase() + 7;
      alvo.receberDano(dano);
      print('${usuario.nome} usou $nome! Causou $dano de dano em ${alvo.nome}.');
    } else {
      print('${usuario.nome} tentou usar $nome, mas não tem energia suficiente!');
    }
  }
}

class Flamethrower extends Habilidade {
  Flamethrower() : super('Flamethrower', 15);

  @override
  void usar(Pokemon usuario, Pokemon alvo) {
    if (usuario.energia >= custoEnergia) {
      usuario.energia -= custoEnergia;
      int dano = usuario.calcularAtaqueBase() + 5;
      alvo.receberDano(dano);
      print('${usuario.nome} usou $nome! Causou $dano de dano em ${alvo.nome}.');
    } else {
      print('${usuario.nome} tentou usar $nome, mas não tem energia suficiente!');
    }
  }
}

void executarTurno(Pokemon atacante, Pokemon defensor, Habilidade habilidade) {
  print('\n--- Turno de Batalha ---');
  
  habilidade.usar(atacante, defensor);

  print('-> Resumo: ${atacante.nome} usou ${habilidade.nome}.');
  print('-> HP restante de ${defensor.nome}: ${defensor.hpAtual}');

  if (defensor.hpAtual <= 0) {
    print('=> RESULTADO: O pokémon ${defensor.nome} foi derrotado!');
  }
}