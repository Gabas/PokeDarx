import 'dart:io';
import 'package:pokedarx/pokedarx.dart';
import 'package:pokedarx/pokemon.dart';
import 'package:pokedarx/pokedex.dart';
import 'package:pokedarx/batalha.dart';

void main() {
  //antigoMain();

  var pokedex = Pokedex();

  var charmander = PokemonFogo(
    4,
    'Charmander',
    14,
    39,
    39,
    false,
    'Charmeleon',
    16,
  );
  var vulpix = PokemonFogo(37, 'Vulpix', 20, 38, 38, false, 'Ninetales', 25);
  var growlithe = PokemonFogo(58, 'Growlithe', 30, 55, 55, false, null, 0);

  // Pokémons de Água (PokemonAgua - Q6)
  var squirtle = PokemonAgua(7, 'Squirtle', 16, 44, 44, false, 'Wartortle', 16);
  var psyduck = PokemonAgua(54, 'Psyduck', 22, 50, 50, false, 'Golduck', 33);

  // Pokémons Elétricos (PokemonEletrico - Q6)
  var pikachu = PokemonEletrico(25, 'Pikachu', 35, 35, 35, false, 'Raichu', 30);
  var magnemite = PokemonEletrico(
    81,
    'Magnemite',
    18,
    25,
    25,
    false,
    'Magneton',
    30,
  );

  // Pokémon de tipo Planta (classe base - Q1)
  var bulbasaur = Pokemon(
    1,
    'Bulbasaur',
    'Planta',
    15,
    45,
    45,
    false,
    'Ivysaur',
    16,
  );

  var eevee = Pokemon(
    133,
    'Eevee',
    'Normal',
    10,
    55,
    55,
    false,
    'Vaporeon',
    25,
  );

  pokedex.adicionarPokemon(charmander);
  pokedex.adicionarPokemon(vulpix);
  pokedex.adicionarPokemon(growlithe);
  pokedex.adicionarPokemon(squirtle);
  pokedex.adicionarPokemon(psyduck);
  pokedex.adicionarPokemon(pikachu);
  pokedex.adicionarPokemon(magnemite);
  pokedex.adicionarPokemon(bulbasaur);
  pokedex.adicionarPokemon(eevee);

  bool rodando = true;

  while (rodando) {
    print('\n╔════════════════════════════════════════╗');
    print('║            POKÉDEX INTERATIVA          ║');
    print('╠════════════════════════════════════════╣');
    print('║ 1. Listar todos os Pokémons            ║');
    print('║ 2. Buscar Pokémon por número           ║');
    print('║ 3. Filtrar por Tipo                    ║');
    print('║ 4. Ver Estatísticas da Pokédex (Q11)   ║');
    print('║ 5. Evoluir um Pokémon                  ║');
    print('║ 0. Sair do Sistema                     ║');
    print('╚════════════════════════════════════════╝');
    stdout.write('Escolha uma opção: ');

    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print('\n--- LISTA DE POKÉMONS ---');
        if (pokedex.lista.isEmpty) {
          print('A Pokédex está vazia.');
        } else {
          pokedex.listarTodos();
        }
        break;

      case '2':
        stdout.write('Digite o número (ID) do Pokémon: ');
        String? numStr = stdin.readLineSync();
        int? numero = int.tryParse(numStr ?? '');

        if (numero != null) {
          var p = pokedex.buscarPorNumero(numero);
          if (p != null) {
            p.exibirFicha();
          } else {
            print('Pokémon #${numero} não encontrado na Pokédex.');
          }
        } else {
          print('Entrada inválida. Digite apenas números.');
        }
        break;

      case '3':
        stdout.write('Digite o tipo para filtrar (ex: Fogo, Agua, Planta): ');
        String? tipo = stdin.readLineSync();

        if (tipo != null && tipo.isNotEmpty) {
          var filtrados = pokedex.listarPorTipo(tipo);
          print('\n--- RESULTADOS PARA O TIPO "${tipo.toUpperCase()}" ---');
          if (filtrados.isEmpty) {
            print('Nenhum Pokémon desse tipo foi encontrado.');
          } else {
            for (var p in filtrados) {
              print('• ${p.nome} (Nº${p.numero}) - Nível: ${p.nivel}');
            }
          }
        }
        break;

      case '4':
        print('\n--- ESTATÍSTICAS DA POKÉDEX ---');
        print('Total de Pokémons: ${pokedex.totalPokemons()}');
        print(
          'Média de Nível da equipe: ${pokedex.mediaDeNivel().toStringAsFixed(2)}',
        );
        print(
          'Percentual Capturados: ${pokedex.percentualCapturados().toStringAsFixed(1)}%',
        );

        print('\nQuantidade por Tipo:');
        var tipos = pokedex.quantidadePorTipo();
        if (tipos.isEmpty) {
          print('  Nenhum dado disponível.');
        } else {
          tipos.forEach((tipo, quantidade) {
            print('  • $tipo: $quantidade');
          });
        }
        break;

      case '5':
        stdout.write('Digite o número do Pokémon que deseja evoluir: ');
        String? evoStr = stdin.readLineSync();
        int? numeroEvo = int.tryParse(evoStr ?? '');

        if (numeroEvo != null) {
          var p = pokedex.buscarPorNumero(numeroEvo);
          if (p != null) {
            print('\nTentando evoluir ${p.nome}...');
            p.evolui();
          } else {
            print('Pokémon não encontrado.');
          }
        } else {
          print('Entrada inválida.');
        }
        break;

      case '0':
        rodando = false;
        print('\nDesligando a Pokédex... Até logo!');
        break;

      default:
        print('\nOpção inválida. Escolha um número do menu.');
    }
  }
}
