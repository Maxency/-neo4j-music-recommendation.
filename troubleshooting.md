# Troubleshooting – Problemas e Soluções

## 1. Erro ao carregar CSV (Invalid UTF-8)
Solução: Reexportei os arquivos CSV em UTF-8 sem BOM.

## 2. Relacionamentos duplicados
Solução: Troquei `CREATE` por `MERGE`.

## 3. CSV com separador errado
Solução: Padronizei para vírgula.

## 4. Permissão negada no Neo4j Desktop
Solução: Habilitei *"Allow CSV import from local files"* no `neo4j.conf`.

## 5. Cardinalidade incorreta
Solução: Adicionei constraints e revisei o dataset.
