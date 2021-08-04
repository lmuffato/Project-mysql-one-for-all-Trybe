CREATE VIEW perfil_artistas AS
SELECT art.artista_nome AS artista, alb.nome_album AS album, COUNT(sa.usuario_id) AS seguidores 
FROM SpotifyClone.Artistas AS art
INNER JOIN SpotifyClone.Albuns AS alb
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.Seguindo_artistas AS sa
ON sa.artista_id = art.artista_id
GROUP BY art.artista_nome, alb.nome_album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
