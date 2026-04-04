import 'pokemon.dart';

class Pokedex {
  List<Pokemon> _pokemons = [];

  // adiciona um pokemon na lista
  bool adicionarPokemon(Pokemon p) {
    for (var poke in _pokemons) {
      if (poke.numero == p.numero) {
        print('esse pokemon já ta na lista!');
        return false;
      }
    }
    _pokemons.add(p);
    return true;
  }


  bool removerPokemonPorNumero(int numero) {
    for (var poke in _pokemons) {
      if (poke.numero == numero) {
        _pokemons.remove(poke);
        return true;
      }
    }
    return false;
  }

  Pokemon? buscarPorNumero(int numero) {
    for (var poke in _pokemons) {
      if (poke.numero == numero) {
        return poke;
      }
    }
    return null;
  }

  void listarTodos() {
    for (var poke in _pokemons) {
      poke.exibirFicha();
    }
  }

  List<Pokemon> listarCapturados() {
    List<Pokemon> lista = [];
    for (var p in _pokemons) {
      if (p.capturado == true) {
        lista.add(p);
      }
    }
    return lista;
  }

  // filtro por tipo
  List<Pokemon> listarPorTipo(String tipo) {
    List<Pokemon> lista = [];
    for (var p in _pokemons) {
      if (p.tipo.toLowerCase() == tipo.toLowerCase()) {
        lista.add(p);
      }
    }
    return lista;
  }

  List<Pokemon> listarAcimaDoNivel(int nivelMinimo) {
    List<Pokemon> lista = [];
    for (var p in _pokemons) {
      if (p.nivel > nivelMinimo) {
        lista.add(p);
      }
    }
    return lista;
  }

  // verifica se pode evoluir
  List<Pokemon> listarQuePodemEvoluir() {
    List<Pokemon> lista = [];
    for (var p in _pokemons) {
      if (p.proximaEvolucao != null) {
        if (p.nivel >= p.nivelEvolucao) {
          lista.add(p);
        }
      }
    }
    return lista;
  }
}
