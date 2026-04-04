import 'package:pokedarx/pokemon.dart';
import 'package:pokedarx/pokedarx.dart';

void main() {
  var chikorita = Pokemon(152, 'Chikorita', 'Planta', 5, 20, 20, false, 'Bayleef', 16);
  var cyndaquil = Pokemon(155, 'Cyndaquil', 'Fogo', 7, 24, 24, false, 'Quilava', 14);
  var totodile = Pokemon(158, 'Totodile', 'Agua', 10, 30, 30, true, 'Croconaw', 18);
  var pikachu = Pokemon(25, 'Pikachu', 'Eletrico', 20, 35, 35, true, 'Raichu', 30);
  var bulbasaur = Pokemon(1, 'Bulbasaur', 'Planta', 15, 25, 25, true, 'Ivysaur', 16); // Precisava ter 5 pokemons no minimo, adicionei mais 3 pra fica de acordo. Ass. LuizinhoBRgamer

  print('Estado inicial:');
  chikorita.exibirFicha();
  cyndaquil.exibirFicha();

  print('Aplicando métodos da questão 2:\n');

  chikorita.subirNivel(4);
  chikorita.receberDano(12);
  chikorita.curar(5);

  cyndaquil.subirNivel(200); // Deve limitar no nível 100.
  cyndaquil.receberDano(30); // Deve limitar HP em 0.
  cyndaquil.curar(100); // Deve limitar HP no máximo.

  print('Estado final:');
  chikorita.exibirFicha();
  cyndaquil.exibirFicha();



  print('--- TESTE POKEDEX ---');

  var pokedex = Pokedex();

  pokedex.adicionarPokemon(chikorita);
  pokedex.adicionarPokemon(cyndaquil);
  pokedex.adicionarPokemon(totodile);
  pokedex.adicionarPokemon(pikachu);
  pokedex.adicionarPokemon(bulbasaur);

  print('--- LISTA TODOS ---');
  pokedex.listarTodos();

  print('--- BUSCAR #25 ---');
  var p = pokedex.buscarPorNumero(25);
  if (p != null) {
    p.exibirFicha();
  }

  print('--- REMOVER #158 ---');
  print(pokedex.removerPokemonPorNumero(158));

  print('--- CAPTURADOS ---');
  for (var poke in pokedex.listarCapturados()) {
    print(poke.nome);
  }

  print('--- TIPO PLANTA ---');
  for (var poke in pokedex.listarPorTipo('planta')) {
    print(poke.nome);
  }

  print('--- NIVEL > 10 ---');
  for (var poke in pokedex.listarAcimaDoNivel(10)) {
    print(poke.nome);
  }

  print('--- PODEM EVOLUIR ---');
  for (var poke in pokedex.listarQuePodemEvoluir()) {
    print(poke.nome);
  }
}



