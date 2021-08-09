CREATE VIEW perfil_artistas AS (
SELECT artistas.artista_nome AS artista,
albuns.album_nome AS album,
COUNT(seguindo_artistas.artista_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN SpotifyClone.albuns AS albuns
INNER JOIN SpotifyClone.seguindo_artistas AS seguindo_artistas
ON artistas.artista_id = albuns.artista_id AND artistas.artista_id = seguindo_artistas.artista_id
GROUP BY seguindo_artistas.artista_id, albuns.album_nome
ORDER BY `seguidores` DESC, `artista`, `album`
);
