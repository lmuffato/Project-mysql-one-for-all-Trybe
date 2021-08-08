CREATE VIEW faturamento_atual AS (
SELECT
a.artist_name AS 'artista',
al.album_name AS 'album',
COUNT(f.artist_id) AS 'seguidores'
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al ON a.artist_id = al.artist_id
INNER JOIN SpotifyClone.follow AS f ON a.artist_id = f.artist_id
GROUP BY f.artist_id, al.album_name
ORDER BY COUNT(f.artist_id) DESC, a.artist_name ASC, al.album_name ASC
);
