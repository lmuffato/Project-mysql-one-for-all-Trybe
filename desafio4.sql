CREATE VIEW top_3_artistas AS
    SELECT a.artist_name AS artista, COUNT(u.user_name) AS seguidores
    FROM SpotifyClone.artists a INNER JOIN SpotifyClone.followers f
    ON a.artist_id = f.artist_id
INNER JOIN SpotifyClone.users u
ON u.user_id = f.user_id
    GROUP BY 1
    ORDER BY 2 DESC, 1
LIMIT 3;
