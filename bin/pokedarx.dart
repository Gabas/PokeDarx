import 'package:pokedarx/pokemon.dart';
import 'package:pokedarx/pokedarx.dart';
import 'package:pokedarx/batalha.dart';

void main() {
  // var chikorita = Pokemon(152, 'Chikorita', 'Planta', 5, 20, 20, false, 'Bayleef', 16);
  // var cyndaquil = Pokemon(155, 'Cyndaquil', 'Fogo', 7, 24, 24, false, 'Quilava', 14);
  // var totodile = Pokemon(158, 'Totodile', 'Agua', 10, 30, 30, true, 'Croconaw', 18);
  // var pikachu = Pokemon(25, 'Pikachu', 'Eletrico', 20, 35, 35, true, 'Raichu', 30);
  // var bulbasaur = Pokemon(1, 'Bulbasaur', 'Planta', 15, 25, 25, true, 'Ivysaur', 16); // Precisava ter 5 pokemons no minimo, adicionei mais 3 pra fica de acordo. Ass. LuizinhoBRgamer

  // print('Estado inicial:');
  // chikorita.exibirFicha();
  // cyndaquil.exibirFicha();

  // print('Aplicando métodos da questão 2:\n');

  // chikorita.subirNivel(4);
  // chikorita.receberDano(12);
  // chikorita.curar(5);

  // cyndaquil.subirNivel(200); // Deve limitar no nível 100.
  // cyndaquil.receberDano(30); // Deve limitar HP em 0.
  // cyndaquil.curar(100); // Deve limitar HP no máximo.

  // print('Estado final:');
  // chikorita.exibirFicha();
  // cyndaquil.exibirFicha();



  // print('---TESTE---');

  // var pokedex = Pokedex();

  // pokedex.adicionarPokemon(chikorita);
  // pokedex.adicionarPokemon(cyndaquil);
  // pokedex.adicionarPokemon(totodile);
  // pokedex.adicionarPokemon(pikachu);
  // pokedex.adicionarPokemon(bulbasaur);

  // print('---LISTA OS POKEMONS---');
  // pokedex.listarTodos();

  // print('---BUSCAR O NUMERO 25---');
  // var p = pokedex.buscarPorNumero(25);
  // if (p != null) {
  //   p.exibirFicha();
  // }

  // print('---REMOVER O 158---');
  // print(pokedex.removerPokemonPorNumero(158));

  // print('---POKEMONS CAPTURADOS---');
  // for (var poke in pokedex.listarCapturados()) {
  //   print(poke.nome);
  // }

  // print('---TIPO PLANTA---');
  // for (var poke in pokedex.listarPorTipo('planta')) {
  //   print(poke.nome);
  // }

  // print('---NIVEL > 10---');
  // for (var poke in pokedex.listarAcimaDoNivel(10)) {
  //   print(poke.nome);
  // }

  // print('---OS QUE PODEM EVOLUIR---');
  // for (var poke in pokedex.listarQuePodemEvoluir()) {
  //   print(poke.nome);
  // }


print('--- QUESTÃO 6: Herança ---');
  var charizard = PokemonFogo(6, 'Charizard', 36, 120, 120, true, null, 0); 
  var blastoise = PokemonAgua(9, 'Blastoise', 36, 130, 130, true, null, 0); 
  var raichu = PokemonEletrico(26, 'Raichu', 36, 100, 100, true, null, 0); 

  charizard.exibirFicha(); 
  blastoise.exibirFicha(); 
  raichu.exibirFicha(); 

  print('Ataque Base Charizard (Fogo): ${charizard.calcularAtaqueBase()}');
  print('Ataque Base Blastoise (Água): ${blastoise.calcularAtaqueBase()}');
  print('Ataque Base Raichu (Elétrico): ${raichu.calcularAtaqueBase()}');


  print('\n--- QUESTÃO 7 e 8: Habilidades e Polimorfismo ---');
  var flamethrower = Flamethrower();
  var hydroPump = HydroPump();

  executarTurno(charizard, blastoise, flamethrower);

  executarTurno(blastoise, charizard, hydroPump);

  print('\n[O Charizard sofreu um ataque surpresa do Pikachu e ficou fraco...]');
  charizard.receberDano(100); 

  executarTurno(blastoise, charizard, hydroPump);

  print('\n[Tentando usar ataque sem energia...]');
  charizard.energia = 10;
  flamethrower.usar(charizard, blastoise);

// QUEM FOR FAZER A QUESTÃO 9, JÁ APROVEITA E DÁ UMA ORGANIZADA NESSE MAIN, TÁ MEIO BAGUNÇADO 
// agr entendi pq pediu pra mim fazer kkkkkkkkkkkkkkkkkkkkkkkkkkkkk eu dobro e passo pro proximo



  
// print('\n---TESTE POKDEX---');

// Pokemon pikachu = Pokemon(25, 'Pikachu', 'Eletrico', 10, 35, 35, false, 'Raichu', 20);

// pikachu.favoritar();
// pikachu.marcarComoVisto();
// pikachu.marcarComoCapturado();
// pikachu.favoritar();
// pikachu.desfavoritar();

}



