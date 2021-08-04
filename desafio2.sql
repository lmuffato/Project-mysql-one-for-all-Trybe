CREATE VIEW estatisticas_musicais AS
SELECT COUNT(m.id) AS 'cancoes', 
COUNT(DISTINCT a.artista_id) AS 'artistas', 
COUNT(DISTINCT a.id) AS 'albuns'
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.albuns AS a
ON a.id = m.album_id;
