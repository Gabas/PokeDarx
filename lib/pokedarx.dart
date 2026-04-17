import 'package:pokedarx/pokemon.dart';
import 'package:pokedarx/pokedex.dart';
import 'package:pokedarx/batalha.dart';

void antigoMain() {
  print('╔══════════════════════════════════════════════════════╗');
  print('║         POKÉDEX - SIMULAÇÃO COMPLETA (Q12)          ║');
  print('╚══════════════════════════════════════════════════════╝');

  // ============================================================
  // CADASTRO DE POKÉMONS (mínimo 8, pelo menos 3 tipos)
  // Usando as subclasses de herança (Q6) e a classe base (Q1)
  // ============================================================
  print('\n========== CADASTRO DE POKÉMONS ==========\n');

  // Pokémons de Fogo (PokemonFogo - Q6)
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

  // Pokémon extra de tipo Normal
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

  // ============================================================
  // CRIAÇÃO DA POKÉDEX E ADIÇÃO DOS POKÉMONS (Q4)
  // ============================================================
  var pokedex = Pokedex();

  pokedex.adicionarPokemon(charmander);
  pokedex.adicionarPokemon(vulpix);
  pokedex.adicionarPokemon(growlithe);
  pokedex.adicionarPokemon(squirtle);
  pokedex.adicionarPokemon(psyduck);
  pokedex.adicionarPokemon(pikachu);
  pokedex.adicionarPokemon(magnemite);
  pokedex.adicionarPokemon(bulbasaur);
  pokedex.adicionarPokemon(eevee);

  print('9 pokémons cadastrados na Pokédex com sucesso!\n');

  // Testando duplicata (Q4 - não permitir dois com mesmo número)
  print('Tentando adicionar Pikachu novamente:');
  pokedex.adicionarPokemon(pikachu);

  // ============================================================
  // MARCAR COMO VISTOS, CAPTURADOS E FAVORITOS (Q9)
  // Demonstra a interface RegistravelNaPokedex
  // ============================================================
  print('\n========== REGISTRO NA POKÉDEX (Q9) ==========\n');

  // Marcar alguns como vistos
  charmander.marcarComoVisto();
  vulpix.marcarComoVisto();
  psyduck.marcarComoVisto();
  magnemite.marcarComoVisto();
  eevee.marcarComoVisto();

  // Marcar alguns como capturados (também marca como visto automaticamente)
  pikachu.marcarComoCapturado();
  squirtle.marcarComoCapturado();
  growlithe.marcarComoCapturado();
  bulbasaur.marcarComoCapturado();
  charmander.marcarComoCapturado();

  // Tentar favoritar sem capturar (deve falhar - Q9)
  print('\nTentando favoritar Eevee (não capturado):');
  eevee.favoritar();

  // Favoritar pokémons capturados (mínimo 2 - Q12)
  print('\nFavoritando pokémons capturados:');
  pikachu.favoritar();
  squirtle.favoritar();
  bulbasaur.favoritar();

  // Desfavoritar um para demonstrar
  print('\nDesfavoritando Bulbasaur:');
  bulbasaur.desfavoritar();

  // ============================================================
  // EXIBIR FICHAS (Q1 e Q6 - exibirFicha com categoria)
  // ============================================================
  print('\n========== FICHAS DOS POKÉMONS (Q1 / Q6) ==========');

  pokedex.listarTodos();

  // ============================================================
  // DEMONSTRAÇÃO DE ENCAPSULAMENTO (Q2)
  // ============================================================
  print('\n========== ENCAPSULAMENTO E VALIDAÇÃO (Q2) ==========\n');

  print('Subindo nível de Charmander em 5:');
  charmander.subirNivel(5);
  print('Nível de Charmander agora: ${charmander.nivel}');

  print('\nCharmander recebendo 15 de dano:');
  charmander.receberDano(15);
  print('HP de Charmander agora: ${charmander.hpAtual}/${charmander.hpMaximo}');

  print('\nCurando Charmander em 10:');
  charmander.curar(10);
  print('HP de Charmander agora: ${charmander.hpAtual}/${charmander.hpMaximo}');

  print('\nTentando subir nível do Pikachu acima de 100:');
  pikachu.subirNivel(200);
  print('Nível de Pikachu (limitado a 100): ${pikachu.nivel}');

  print('\nSquirtle recebendo dano absurdo (500):');
  squirtle.receberDano(500);
  print('HP de Squirtle (limitado a 0): ${squirtle.hpAtual}');

  print('\nCurando Squirtle em 999 (limitado ao HP máximo):');
  squirtle.curar(999);
  print('HP de Squirtle: ${squirtle.hpAtual}/${squirtle.hpMaximo}');

  // ============================================================
  // EVOLUÇÃO (Q3) - pelo menos 1 evolução
  // ============================================================
  print('\n========== EVOLUÇÃO (Q3) ==========\n');

  // Squirtle já está no nível 16 e pode evoluir para Wartortle
  print(
    'Squirtle - Nível: ${squirtle.nivel}, Próxima Evolução: ${squirtle.proximaEvolucao}, Nível Evolução: ${squirtle.nivelEvolucao}',
  );
  squirtle.evolui();
  print('Após evolução:');
  squirtle.exibirFicha();

  // Charmander evoluindo (nível 19 >= 16)
  print(
    'Charmander - Nível: ${charmander.nivel}, Próxima Evolução: ${charmander.proximaEvolucao}, Nível Evolução: ${charmander.nivelEvolucao}',
  );
  charmander.evolui();
  print('Após evolução:');
  charmander.exibirFicha();

  // Magnemite não pode evoluir ainda (nível 18 < 30)
  print(
    'Magnemite - Nível: ${magnemite.nivel}, Próxima Evolução: ${magnemite.proximaEvolucao}, Nível Evolução: ${magnemite.nivelEvolucao}',
  );
  magnemite.evolui();

  // Growlithe não tem evolução definida
  print('\nGrowlithe - Próxima Evolução: ${growlithe.proximaEvolucao}');
  growlithe.evolui();

  // ============================================================
  // FILTROS DA POKÉDEX (Q5)
  // ============================================================
  print('\n========== FILTROS DA POKÉDEX (Q5) ==========\n');

  // Listar capturados
  print('--- Pokémons Capturados ---');
  var capturados = pokedex.listarCapturados();
  for (var p in capturados) {
    print('  • ${p.nome} (Nº${p.numero})');
  }

  // Listar por tipo (case-insensitive)
  print('\n--- Pokémons do tipo Fogo ---');
  var fogo = pokedex.listarPorTipo('fogo');
  for (var p in fogo) {
    print('  • ${p.nome} (Nº${p.numero})');
  }

  print('\n--- Pokémons do tipo Agua ---');
  var agua = pokedex.listarPorTipo('AGUA');
  for (var p in agua) {
    print('  • ${p.nome} (Nº${p.numero})');
  }

  print('\n--- Pokémons do tipo Eletrico ---');
  var eletrico = pokedex.listarPorTipo('eletrico');
  for (var p in eletrico) {
    print('  • ${p.nome} (Nº${p.numero})');
  }

  // Listar acima do nível
  print('\n--- Pokémons acima do nível 20 ---');
  var acimaDoNivel = pokedex.listarAcimaDoNivel(20);
  for (var p in acimaDoNivel) {
    print('  • ${p.nome} - Nível ${p.nivel}');
  }

  // Listar que podem evoluir
  print('\n--- Pokémons que podem evoluir ---');
  var podemEvoluir = pokedex.listarQuePodemEvoluir();
  if (podemEvoluir.isEmpty) {
    print('  Nenhum pokémon pode evoluir no momento.');
  }
  for (var p in podemEvoluir) {
    print(
      '  • ${p.nome} -> ${p.proximaEvolucao} (Nível necessário: ${p.nivelEvolucao}, Atual: ${p.nivel})',
    );
  }

  // ============================================================
  // CONSULTAS COM FUNÇÕES ANÔNIMAS (Q10)
  // ============================================================
  print('\n========== CONSULTAS COM FUNÇÕES ANÔNIMAS (Q10) ==========\n');

  // Filtrar pokémons com hpAtual abaixo de 30
  print('--- Pokémons com HP atual abaixo de 30 ---');
  var hpBaixo = pokedex.lista.where((p) => p.hpAtual < 30);
  if (hpBaixo.isEmpty) {
    print('  Nenhum pokémon com HP abaixo de 30.');
  }
  for (var p in hpBaixo) {
    print('  • ${p.nome} - HP: ${p.hpAtual}/${p.hpMaximo}');
  }

  // Ordenar por nome em ordem alfabética
  print('\n--- Pokémons ordenados por nome (A-Z) ---');
  var ordenadoNome = [...pokedex.lista];
  ordenadoNome.sort((a, b) => a.nome.compareTo(b.nome));
  for (var p in ordenadoNome) {
    print('  • ${p.nome}');
  }

  // Ordenar por nível em ordem decrescente
  print('\n--- Pokémons ordenados por nível (decrescente) ---');
  var ordenadoNivel = [...pokedex.lista];
  ordenadoNivel.sort((a, b) => b.nivel.compareTo(a.nivel));
  for (var p in ordenadoNivel) {
    print('  • ${p.nome} - Nível ${p.nivel}');
  }

  // Selecionar apenas os favoritos
  print('\n--- Pokémons favoritos ---');
  var favoritos = pokedex.lista.where((p) => p.favorito);
  for (var p in favoritos) {
    print('  • ${p.nome}');
  }

  // ============================================================
  // BATALHAS COM HABILIDADES (Q7 e Q8) - mínimo 2 batalhas
  // ============================================================
  print('\n========== BATALHAS COM HABILIDADES (Q7 / Q8) ==========');

  // Restaura HP e energia para as batalhas
  pikachu.curar(999);
  growlithe.curar(999);
  psyduck.curar(999);

  // Criar habilidades (Q7 - nomes obrigatórios do enunciado)
  var choqueDoTrovao = ChoqueDoTrovao();
  var jatoDAgua = JatoDAgua();
  var lancaChamas = LancaChamas();

  // ---- BATALHA 1: Pikachu vs Growlithe ----
  print('\n╔══════════════════════════════════════╗');
  print('║   BATALHA 1: Pikachu vs Growlithe    ║');
  print('╚══════════════════════════════════════╝');

  // Turno 1: Pikachu usa Choque do Trovão em Growlithe
  executarTurno(pikachu, growlithe, choqueDoTrovao);

  // Turno 2: Growlithe usa Lança-Chamas em Pikachu
  executarTurno(growlithe, pikachu, lancaChamas);

  // Turno 3: Pikachu usa Choque do Trovão novamente
  executarTurno(pikachu, growlithe, choqueDoTrovao);

  // ---- BATALHA 2: Psyduck vs Vulpix ----
  print('\n╔══════════════════════════════════════╗');
  print('║     BATALHA 2: Psyduck vs Vulpix     ║');
  print('╚══════════════════════════════════════╝');

  vulpix.curar(999);

  // Turno 1: Psyduck usa Jato D'Água em Vulpix
  executarTurno(psyduck, vulpix, jatoDAgua);

  // Turno 2: Vulpix usa Lança-Chamas em Psyduck
  executarTurno(vulpix, psyduck, lancaChamas);

  // Turno 3: Psyduck usa Jato D'Água novamente
  executarTurno(psyduck, vulpix, jatoDAgua);

  // ============================================================
  // ESTATÍSTICAS DA POKÉDEX (Q11)
  // ============================================================
  print('\n========== ESTATÍSTICAS DA POKÉDEX (Q11) ==========\n');

  print('Total de Pokémons registrados: ${pokedex.totalPokemons()}');

  print('\nQuantidade por Tipo:');
  var tipos = pokedex.quantidadePorTipo();
  tipos.forEach((tipo, quantidade) {
    print('  • $tipo: $quantidade');
  });

  print('\nMédia de Nível: ${pokedex.mediaDeNivel().toStringAsFixed(2)}');
  print(
    'Percentual de Capturados: ${pokedex.percentualCapturados().toStringAsFixed(1)}%',
  );

  // ============================================================
  // RESUMO FINAL
  // ============================================================
  print('\n╔══════════════════════════════════════════════════════╗');
  print('║            SIMULAÇÃO CONCLUÍDA COM SUCESSO!          ║');
  print('╠══════════════════════════════════════════════════════╣');
  print('║  Conceitos demonstrados:                             ║');
  print('║  • Q1:  Classes e objetos (Pokemon)                  ║');
  print('║  • Q2:  Encapsulamento e validação                   ║');
  print('║  • Q3:  Evolução com regra fixa                      ║');
  print('║  • Q4:  Pokédex com coleção interna                  ║');
  print('║  • Q5:  Filtros obrigatórios                         ║');
  print('║  • Q6:  Herança (PokemonFogo/Agua/Eletrico)          ║');
  print('║  • Q7:  Classe abstrata Habilidade                   ║');
  print('║  • Q8:  Polimorfismo em batalha (executarTurno)      ║');
  print('║  • Q9:  Interface RegistravelNaPokedex               ║');
  print('║  • Q10: Funções anônimas (.where, .sort)             ║');
  print('║  • Q11: Estatísticas da Pokédex                      ║');
  print('║  • Q12: Simulação completa do app                    ║');
  print('╚══════════════════════════════════════════════════════╝');
}
