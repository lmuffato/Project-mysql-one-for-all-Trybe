-- SELECT * FROM SpotifyClone.Artista;
-- SELECT * FROM SpotifyClone.Album;
-- SELECT * FROM SpotifyClone.Seguidores_Artista;

-- SELECT
-- ART.nome_artista AS `artista`,
-- ALB.nome_album AS `album`,
-- (SELECT
-- COUNT(ART.usuario_ID)
-- FROM SpotifyClone.Seguidores_Artista AS ART
-- WHERE ART.artista_ID = ALB.artista_ID
-- ) AS `seguidores`
-- FROM SpotifyClone.Album AS ALB
-- INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_id = ALB.artista_ID
-- ORDER BY `seguidores` DESC, `artista`, `album`;

-- USE SpotifyClone;

CREATE VIEW perfil_artistas AS
SELECT
ART.nome_artista AS `artista`,
ALB.nome_album AS `album`,
(SELECT
COUNT(ART.usuario_ID)
FROM SpotifyClone.Seguidores_Artista AS ART
WHERE ART.artista_ID = ALB.artista_ID
) AS `seguidores`
FROM SpotifyClone.Album AS ALB
INNER JOIN SpotifyClone.Artista AS ART ON ART.artista_id = ALB.artista_ID
ORDER BY `seguidores` DESC, `artista`, `album`;

-- SELECT * FROM perfil_artistas;
