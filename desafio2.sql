CREATE VIEW estatisticas_musicais AS
SELECT 
COUNT(s.song) AS 'cancoes',
COUNT(DISTINCT a.artist) AS 'artistas',
COUNT(DISTINCT ab.album) AS 'albuns'
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.album AS ab ON s.album_id = ab.album_id
INNER JOIN SpotifyClone.artist AS a ON ab.artist_id = a.artist_id;
