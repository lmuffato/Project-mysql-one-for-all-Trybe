CREATE VIEW top_3_artistas AS
SELECT tableartist.artist AS artista, COUNT(tablefollower.artist_id_fk) AS seguidores
FROM SpotifyClone.followers AS tablefollower
INNER JOIN SpotifyClone.artists AS tableartist ON tablefollower.artist_id_fk = tableartist.artist_id
GROUP BY tableartist.artist ORDER BY 2 DESC , 1 ASC LIMIT 3;
