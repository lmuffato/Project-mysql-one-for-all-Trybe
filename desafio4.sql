-- DROP VIEW top_3_artistas;

CREATE VIEW top_3_artistas AS
    SELECT 
        a.artist AS artista, 
        COUNT(f.user_id) AS seguidores
    FROM
        SpotifyClone.artists AS a
            INNER JOIN
        SpotifyClone.following_artists AS f ON a.artist_id = f.artist_id
    GROUP BY 1
    ORDER BY 2 DESC , 1
    LIMIT 3;

-- SELECT * FROM top_3_artistas;
