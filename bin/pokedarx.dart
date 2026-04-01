import 'package:pokedarx/pokemon.dart';

void main() {
  var chikorita = Pokemon(152, 'Chikorita', 'Planta', 5, 20, 20, false, 'Bayleef', 16,);
  var cyndaquil = Pokemon(155, 'Cyndaquil', 'Fogo', 7, 24, 24, false, 'Quilava', 14,);

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
}
