-- SELECT * FROM SpotifyClone.Seguidores_Artista;
-- SELECT * FROM SpotifyClone.Artista;
-- SELECT * FROM SpotifyClone.Usuario;

-- SELECT distinct ART.nome_artista AS `artista`,
-- COUNT(USU.nome_usuario) AS `seguidores`
-- FROM SpotifyClone.Seguidores_Artista AS SEG
-- INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_id = SEG.artista_id
-- INNER JOIN SpotifyClone.Usuario AS USU ON USU.usuario_ID = SEG.usuario_ID
-- GROUP BY ART.nome_artista
-- HAVING `seguidores` > 1
-- ORDER BY `seguidores` DESC, `artista`;

-- USE SpotifyClone;

CREATE VIEW top_3_artistas AS
SELECT distinct ART.nome_artista AS `artista`,
COUNT(USU.nome_usuario) AS `seguidores`
FROM SpotifyClone.Seguidores_Artista AS SEG
INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_id = SEG.artista_id
INNER JOIN SpotifyClone.Usuario AS USU ON USU.usuario_ID = SEG.usuario_ID
GROUP BY ART.nome_artista
-- HAVING `seguidores` > 1
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;

-- SELECT * FROM top_3_artistas;
