CREATE VIEW perfil_artistas AS 
SELECT artistas.artista_nome AS artista,
albuns.album_nome AS album,
COUNT(conexoes.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS artistas
INNER JOIN albuns AS albuns
ON albuns.artista_id = artistas.artista_id
INNER JOIN conexoes AS conexoes
ON conexoes.artista_id = artistas.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
