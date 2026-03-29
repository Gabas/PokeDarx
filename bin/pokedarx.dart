import 'package:pokedarx/pokemon.dart';

void main() {
  var chikorita = Pokemon(152, 'Chikorita', 'Planta', 5, 20, 20, false);
  var cyndaquil = Pokemon(155, 'Cyndaquil', 'Fogo', 5, 20, 20, false);
  var totodile = Pokemon(158, 'Totodile', 'Água', 5, 20, 20, true);

  chikorita.exibirFicha();
  cyndaquil.exibirFicha();
  totodile.exibirFicha();
}
