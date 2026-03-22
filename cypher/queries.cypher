MATCH (u:User {id: $userId})-[:OUVIU]->(:Song)<-[:OUVIU]-(outros:User)-[:OUVIU]->(recs:Song)
WHERE NOT (u)-[:OUVIU]->(recs)
RETURN recs.title AS recomendacao, COUNT(*) AS relevancia
ORDER BY relevancia DESC
LIMIT 10;

MATCH (u:User {id: $userId})-[:SEGUE]->(a:Artist)<-[:DE_ARTISTA]-(s:Song)-[:DE_ARTISTA]->(outros:Artist)
WHERE outros <> a
RETURN outros.name AS artista_recomendado, COUNT(*) AS conexoes
ORDER BY conexoes DESC;

MATCH (u:User {id: $userId})-[:OUVIU]->(s:Song)-[:TEM_GENERO]->(g:Genre)
RETURN g.name AS genero, COUNT(*) AS ocorrencias
ORDER BY ocorrencias DESC;
