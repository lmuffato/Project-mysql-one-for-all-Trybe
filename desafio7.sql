CREATE VIEW perfil_artistas AS
SELECT
artistas.nome_artista AS `artista`,
albuns.nome_album AS `album`,
(
SELECT COUNT(*)
FROM SpotifyClone.Seguindo_artistas AS t2
WHERE artistas.artista_id = t2.artista_id
) AS `seguidores`
FROM SpotifyClone.Artistas AS artistas
INNER JOIN SpotifyClone.Albuns AS albuns
ON artistas.artista_id = albuns.artista_id
ORDER BY `seguidores` DESC, `artista`, `album`;
