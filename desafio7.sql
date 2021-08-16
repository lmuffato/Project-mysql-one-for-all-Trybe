CREATE VIEW perfil_artistas AS
SELECT
art.nome AS 'artista',
alb.nome AS 'album',
(SELECT COUNT(artista_id) FROM SpotifyClone.seguidores WHERE artista_id = art.artista_id) AS 'seguidores'
FROM SpotifyClone.albuns AS alb
JOIN SpotifyClone.artistas AS art ON alb.artista_id = art.artista_id
ORDER BY 3 DESC, 1, 2;
