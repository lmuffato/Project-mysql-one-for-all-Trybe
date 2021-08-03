CREATE VIEW top_3_artistas AS
    SELECT 
        ar.artist_name AS 'artista', COUNT(user_id) AS 'seguidores'
    FROM
        SpotifyClone.followers AS fo
            INNER JOIN
        SpotifyClone.artists AS ar ON fo.artist_id = ar.artist_id
    GROUP BY fo.artist_id
    ORDER BY seguidores DESC , artista ASC
    LIMIT 3;
