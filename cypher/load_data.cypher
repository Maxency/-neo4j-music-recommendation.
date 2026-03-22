LOAD CSV WITH HEADERS FROM 'file:///users.csv' AS row
MERGE (:User {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///artists.csv' AS row
MERGE (:Artist {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///genres.csv' AS row
MERGE (:Genre {id: row.id, name: row.name});

LOAD CSV WITH HEADERS FROM 'file:///songs.csv' AS row
MERGE (s:Song {id: row.id, title: row.title})
WITH s, row
MATCH (a:Artist {id: row.artist_id})
MATCH (g:Genre {id: row.genre_id})
MERGE (s)-[:DE_ARTISTA]->(a)
MERGE (s)-[:TEM_GENERO]->(g);

LOAD CSV WITH HEADERS FROM 'file:///listens.csv' AS row
MATCH (u:User {id: row.user_id})
MATCH (s:Song {id: row.song_id})
MERGE (u)-[:OUVIU {nota: toInteger(row.rating), data: date(row.date)}]->(s);
