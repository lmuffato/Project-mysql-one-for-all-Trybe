CREATE VIEW perfil_artistas AS (
SELECT a.artista AS 'artista',
al.album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON a.artista_id = s.artista_id AND al.artista_id = s.artista_id
GROUP BY a.artista, al.album
ORDER BY `seguidores` DESC, `artista`, `album`
);
