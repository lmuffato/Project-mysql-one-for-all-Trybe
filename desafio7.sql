CREATE VIEW perfil_artistas AS
SELECT  a.artista_nome AS artista,
alb.album_nome AS album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.seguindo_artista AS seg
INNER JOIN 
SpotifyClone.artista as a
ON seg.artista_id = a.artista_id
INNER JOIN 
SpotifyClone.album AS alb
ON a.artista_id = alb.artista_id
GROUP BY alb.artista_id, album
ORDER BY `seguidores` DESC, `artista` ASC, `album` ASC;
