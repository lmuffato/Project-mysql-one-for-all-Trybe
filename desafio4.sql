CREATE VIEW top_3_artistas AS
    SELECT aa.artist_name AS artista, COUNT(u.user_name) AS seguidores
    FROM SpotifyClone.artists aa INNER JOIN SpotifyClone.followers f
    ON aa.artist_id = f.artist_id
    INNER JOIN SpotifyClone.users u
	ON u.user_id = f.user_id
    GROUP BY artista
    ORDER BY seguidores DESC, artista
	LIMIT 3;