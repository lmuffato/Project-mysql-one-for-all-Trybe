CREATE VIEW top_3_artistas AS
SELECT artista_nome `artista`, COUNT(fa.artista_id) `seguidores`
FROM artistas ar
INNER JOIN FaArtistas fa ON fa.usuario_id = ar.artista_id
GROUP BY artista_nome HAVING seguidores > 1;
