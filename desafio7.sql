CREATE VIEW perfil_artistas AS
  SELECT
    art.nome AS artista,
    alb.album AS album,
    COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.seguindo_artista AS seg
ON art.artista_id = seg.artista_id
INNER JOIN SpotifyClone.album AS alb
ON alb.artista_id = art.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album
;
