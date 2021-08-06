CREATE VIEW perfil_artistas AS 
SELECT
artistas.artista,
albuns.album,
COUNT(seguindo.usuario_id) AS `seguidores`
FROM
SpotifyClone.artistas AS artistas
INNER JOIN 
SpotifyClone.albuns AS albuns
ON artistas.artista_id = albuns.artista_id
INNER JOIN 
SpotifyClone.seguindo AS seguindo
ON artistas.artista_id = seguindo.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
