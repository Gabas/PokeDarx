# PokeDarx 🔴⚪

Projeto desenvolvido como avaliação prática (1º Bimestre) para a disciplina de Desenvolvimento para Dispositivos Móveis da Universidade Tuiuti do Paraná. O sistema simula o funcionamento de uma Pokédex utilizando conceitos fundamentais de Programação Orientada a Objetos em Dart.

## 👥 Equipe
* **Gabriel Ast dos Santos**
* **Luiz Augusto Manfron Matias**
* **Rafael Luiz Cuypers**
* **Vinícius Rodrigues da Costa**

---

## 🚀 O que foi desenvolvido?

* **Questão 1: Cadastro básico de Pokémon:**
  Criação da classe base `Pokemon` com seus atributos fundamentais (número, nome, tipo, nível, hp, etc.) e o método `exibirFicha()` para mostrar os dados formatados.

* **Questão 2: Encapsulamento e validação de regras:**
  Proteção dos atributos de status (tornando-os privados) e criação de métodos como `subirNivel`, `receberDano` e `curar`, garantindo que regras de negócio fossem respeitadas (ex: nível máximo 100, HP nunca negativo).

* **Questão 3: Evolução com regra fixa:**
  Implementação da mecânica de evolução. O método `evolui()` verifica se o Pokémon atingiu o nível necessário, altera seu nome para a próxima evolução, reseta os parâmetros de evolução e aumenta o HP máximo.

* **Questão 4: Criação da Pokédex:**
  Construção da classe `Pokedex` para gerenciar a coleção interna de Pokémons. Foram criados métodos de gerenciamento como adicionar (evitando números duplicados), remover, buscar por número e listar.

* **Questão 5: Filtros obrigatórios da Pokédex:**
  Adição de buscas avançadas na Pokédex, permitindo filtrar Pokémons capturados, filtrar ignorando maiúsculas/minúsculas por tipo, buscar por nível mínimo e listar os aptos a evoluir.

* **Questão 6: Herança por tipo de Pokémon:**
  Criação das subclasses `PokemonFogo`, `PokemonAgua` e `PokemonEletrico`. Cada uma herda da classe base e sobrescreve o método `calcularAtaqueBase()` com fórmulas específicas do seu elemento, além de personalizar a ficha.

* **Questão 7: Habilidades com classe abstrata:**
  Implementação da classe abstrata `Habilidade` e suas filhas concretas (`ChoqueDoTrovao`, `JatoDAgua`, `LancaChamas`). Foi introduzido o sistema de "Energia", onde cada ataque consome pontos para causar dano.

* **Questão 8: Polimorfismo em batalha:**
  Criação de um sistema de turnos (`executarTurno`) que recebe o atacante, o defensor e a habilidade. Usando polimorfismo puro (sem uso de `if` ou `switch` para checar o tipo de habilidade), o ataque é executado dinamicamente.

* **Questão 9: Interface de registro da Pokédex:**
  Criação e implementação da interface `RegistravelNaPokedex`, padronizando as ações de marcar como visto, capturado, além de favoritar e desfavoritar, respeitando a regra de que apenas capturados podem ser favoritos.

* **Questão 10: Funções anônimas para consultas:**
  Utilização de métodos funcionais do Dart (`.where`, `.sort`) e funções anônimas (lambdas) para buscar Pokémons com HP baixo, listar favoritos e ordenar a coleção alfabeticamente ou por nível.

* **Questão 11: Estatísticas da Pokédex:**
  Criação de um painel de dados na Pokédex contendo o total de registros, agrupamento mapeado por tipos (`Map<String, int>`), média aritmética de níveis e o percentual de captura da coleção.

* **Questão 12: Simulação do App (Desafio Final):**
  A integração de todos os conceitos em um único fluxo no arquivo principal (`main`), simulando o uso interativo completo do sistema: cadastro de múltiplos Pokémons, evolução, filtros, batalhas e relatório estatístico final.

## 🏃 Como rodar o projeto

1. Certifique-se de ter o [Dart SDK](https://dart.dev/get-dart) instalado em sua máquina.
2. Clone este repositório.
3. Abra o terminal na pasta raiz do projeto.
4. Execute o comando:
   ```bash
   dart run