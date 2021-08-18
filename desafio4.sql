CREATE VIEW top_3_artistas AS
SELECT ar.artist_name AS 'artista',
count(fa.artist_id) AS 'seguidores'
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.follow_artists AS fa
ON ar.artist_id = fa.artist_id
GROUP BY fa.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
