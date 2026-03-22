# Neo4j Music Recommendation

Sistema de recomendacao de musicas com grafos (Neo4j).

Este repositorio contem um projeto de recomendacao de musicas utilizando Neo4j e modelagem baseada em grafos. O objetivo e demonstrar como conexoes entre usuarios, musicas, artistas e generos podem gerar recomendacoes inteligentes e personalizadas.

## Por que usar Grafos?
- Mapear padroes de escuta
- Identificar usuarios com comportamentos semelhantes
- Encontrar musicas conectadas por artistas, generos e interacoes
- Criar recomendacoes baseadas em caminhos e conexoes reais

## Modelo do Grafo
Labels: `User`, `Song`, `Artist`, `Genre`
Relacionamentos:
- `(:User)-[:OUVIU {nota, data}]->(:Song)`
- `(:User)-[:CURTIU]->(:Song)`
- `(:User)-[:SEGUE]->(:Artist)`
- `(:Song)-[:DE_ARTISTA]->(:Artist)`
- `(:Song)-[:TEM_GENERO]->(:Genre)`

## Como Executar
1. Instale Neo4j Desktop ou use Neo4j Aura.
2. Crie um banco de dados.
3. Coloque os CSVs na pasta `import/`.
4. Execute `schema.cypher`.
5. Execute `load_data.cypher`.
6. Rode as queries em `queries.cypher`.
