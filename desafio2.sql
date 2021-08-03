CREATE VIEW estatisticas_musicais AS
SELECT count(c.cancao_id) AS 'cancoes',
count(DISTINCT a.artista_id) AS 'artistas',
count(DISTINCT a.album_id) AS 'albuns'
FROM SpotifyClone.Albuns AS a
INNER JOIN SpotifyClone.Cancoes as c
ON a.album_id = c.album_id;
