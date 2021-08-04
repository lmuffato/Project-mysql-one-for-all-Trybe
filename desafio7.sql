CREATE VIEW perfil_artistas AS
SELECT a.nome AS 'artista',
al.nome_album AS 'album',
COUNT(s.usuario_id) AS 'seguidores'
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.artista_id = a.id
INNER JOIN SpotifyClone.seguidores AS s
ON s.artista_id = a.id
GROUP BY `album`, `artista`
ORDER BY `seguidores` DESC, `artista`, `album`;
