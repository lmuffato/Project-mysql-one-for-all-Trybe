CREATE VIEW perfil_artistas AS
SELECT a.nome AS artista, al.album AS album, COUNT(s.usuario_id) AS seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns al ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo_artistas s ON a.artista_id = s.artista_id
GROUP BY `artista`, `album`
ORDER BY `seguidores` DESC, `artista`, `album`;
